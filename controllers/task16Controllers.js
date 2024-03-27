const util = require("util");
const randomstring = require("randomstring");
const md5 = require("md5");

const con = require("../config/dbConfig");
const { generateJwtToken } = require("../utils");

let promisedQuery = util.promisify(con.query).bind(con);

const registerPage = (req, res) => {
  console.log("registerPage API called");
  try {
    res.render("./task16Views/register.ejs");
  } catch (error) {
    console.log("Error inside registerPage API", error);
  }
};

const registerUser = async (req, res) => {
  console.log("registerUser API called");
  try {
    let { first_name, last_name, contact_no, username, email_id, create_password } = req.body;
    first_name = first_name.replaceAll('"', "");
    last_name = last_name.replaceAll('"', "");
    contact_no = contact_no.replaceAll('"', "");
    username = username.replaceAll('"', "");
    email_id = email_id.replaceAll('"', "");
    create_password = create_password.replaceAll('"', "");

    let usernameQuery = `SELECT * from users WHERE username="${username}"`;
    let usernameResult = await promisedQuery(usernameQuery);
    if (usernameResult.length != 0) {
      if (usernameResult[0].activated == 0) {
        let newdate = new Date();
        let olddate = new Date(usernameResult[0].created_at);
        if ((newdate - olddate) / 60000 > 30) {
          let deleteQuery = `DELETE FROM users WHERE username="${username}"`;
          await promisedQuery(deleteQuery);
          return res.send("<p>The Link is expired</p> <a href='/register'>Register again</a>");
        }
      }
      return res.status(409).json({
        type: "username",
        message: "Username already exists",
      });
    }
    let emailQuery = `SELECT * from users WHERE email_id="${email_id}"`;
    let emailResult = await promisedQuery(emailQuery);
    if (emailResult.length != 0) {
      if (emailResult[0].activated == 0) {
        let deleteQuery = `DELETE FROM users WHERE email_id="${email_id}"`;
        await promisedQuery(deleteQuery);
      } else {
        return res.status(409).json({
          type: "email",
          message: "Email already exists",
        });
      }
    }

    let salt = randomstring.generate({
      length: 4,
      charset: "alphanumeric",
    });
    create_password = create_password + salt;
    let hashedPassword = md5(create_password);

    let activationKey = randomstring.generate({
      length: 12,
      charset: "alphanumeric",
    });

    let insertQuery = `INSERT INTO users(first_name, last_name, contact_no, username, email_id, user_password, salt, activation_key, activated) VALUES ("${first_name}", "${last_name}", "${contact_no}", "${username}", "${email_id}", "${hashedPassword}", "${salt}", "${activationKey}", 0)`;
    console.log(insertQuery);
    let insertResult = await promisedQuery(insertQuery);
    if (!insertResult.affectedRows) {
      return res.status(500).json({
        message: "Server Error",
      });
    }
    res.status(200).json({
      userid: insertResult.insertId,
      activationKey: activationKey,
      type: "success",
      message: "User added successfully",
    });
  } catch (error) {
    console.log("Error inside registerUser API", error);
  }
};

const activateAccount = async (req, res) => {
  console.log("activateAccount API called");
  try {
    const { userid, activationkey } = req.params;
    let useridQuery = `SELECT * from users where id=${userid}`;
    let useridResult = await promisedQuery(useridQuery);

    let activationKeyQuery = `SELECT * from users where id=${userid} AND activation_key="${activationkey}"`;
    let activationKeyResult = await promisedQuery(activationKeyQuery);
    if (useridResult.length == 0 || activationKeyResult.length == 0) {
      return res.send("Account activation failed please try again later");
    }
    if (activationKeyResult[0].activated == 1) {
      return res.send("Your account is already activated");
    }
    let newdate = new Date();
    let olddate = new Date(activationKeyResult[0].created_at);

    if ((newdate - olddate) / 60000 > 30) {
      let deleteQuery = `DELETE FROM users WHERE id=${userid}`;
      await promisedQuery(deleteQuery);
      return res.send("<p>The Link is expired</p> <a href='/register'>Register again</a>");
    }

    let newactivationKey = randomstring.generate({
      length: 12,
      charset: "alphanumeric",
    });

    let updateQuery = `UPDATE users set activated=1, activation_key="${newactivationKey}" WHERE id=${userid}`;
    await promisedQuery(updateQuery);
    res.send("<p>Account is activated</p> Click on <a href='/login'>login</a> to login");
  } catch (error) {
    console.log("Error inside activateAccount API", error);
  }
};

const loginPage = (req, res) => {
  console.log("loginPage API called");
  try {
    res.render("./task16Views/login.ejs");
  } catch (error) {
    console.log("Error inside loginPage API", error);
  }
};

const login = async (req, res) => {
  console.log("login API called");
  try {
    let { username, password } = req.body;
    let usernameQuery = `SELECT * FROM users WHERE username="${username}"`;
    let usernameResult = await promisedQuery(usernameQuery);
    if (usernameResult.length == 0) {
      return res.status(404).json({
        type: "credentials",
        message: "Invalid Credentials",
      });
    }
    let salt = usernameResult[0].salt;
    password = password + salt;
    let hashedPassword = md5(password);
    let passwordQuery = `SELECT * FROM users WHERE username="${username}" AND user_password="${hashedPassword}"`;
    let passwordResult = await promisedQuery(passwordQuery);
    if (passwordResult.length == 0) {
      return res.status(404).json({
        type: "credentials",
        message: "Invalid Credentials",
      });
    }
    if (usernameResult[0].activated == 0) {
      return res.status(409).json({
        type: "activation",
        message: "Account isn't activated",
      });
    }
    let token = await generateJwtToken(usernameResult[0]);
    return res.status(200).cookie("token", token).json({
      type: "success",
      message: "Login successful",
    });
  } catch (error) {
    console.log("Error inside login API", error);
  }
};

const forgotPasswordPage = (req, res) => {
  console.log("forgotPasswordPage API called");
  try {
    res.render("./task16Views/forgotPasswordPage.ejs");
  } catch (error) {
    console.log("Error inside forgotPasswordPage", error);
  }
};

const verifyAccount = async (req, res) => {
  console.log("verifyAccount API is called");
  try {
    let { name } = req.body;
    name = name.replaceAll('"', "");
    let query = `SELECT * from users WHERE username="${name}" OR email_id="${name}" OR contact_no="${name}"`;
    let result = await promisedQuery(query);
    if (result.length === 0) {
      return res.status(404).json({
        type: "credentials",
        message: "Invalid credentials",
      });
    }
    if (result[0].activated == 0) {
      return res.status(409).json({
        type: "activation",
        message: "Account isn't activated",
      });
    }
    let activationKey = randomstring.generate({
      length: 12,
      charset: "alphanumeric",
    });

    let updateQuery = `UPDATE users SET activation_key="${activationKey}" WHERE username="${name}" OR email_id="${name}" OR contact_no="${name}"`;
    await promisedQuery(updateQuery);

    return res.status(200).json({
      userid: result[0].id,
      activationKey: activationKey,
      type: "success",
      message: "Verification successful",
    });
  } catch (error) {
    console.log("Error inside verifyAccount", error);
  }
};

const changePasswordPage = (req, res) => {
  console.log("changePasswordPage API called");
  try {
    res.render("./task16Views/changePassword.ejs");
  } catch (error) {
    console.log("Error inside changePasswordPage API", error);
  }
};

const changePassword = async (req, res) => {
  console.log("changePassword API called");
  try {
    let { password, userid, activationKey } = req.body;

    let selectQuery = `SELECT * from users WHERE id="${userid}" AND activation_key="${activationKey}"`;
    let selectResult = await promisedQuery(selectQuery);
    if (selectResult.length == 0) {
      return res.status(500).json({
        type: "invalid",
        message: "Server Error",
      });
    }
    let salt = selectResult[0].salt;
    password = password + salt;
    let hashedPassword = md5(password);
    if (hashedPassword == selectResult[0].user_password) {
      return res.status(409).json({
        type: "same_password",
        message: "Choose different password from last password",
      });
    }
    let updateQuery = `UPDATE users SET user_password="${hashedPassword}" WHERE id=${userid} AND activation_key="${activationKey}"`;
    let result = await promisedQuery(updateQuery);
    if (result.affectedRows == 0) {
      return res.status(500).json({
        type: "invalid",
        message: "Server Error",
      });
    }
    return res.status(200).json({
      type: "success",
      message: "Password changed successfully",
    });
  } catch (error) {
    console.log("Error inside changePassword API", error);
  }
};

const dashboard = (req, res) => {
  console.log("dashboard API called");
  try {
    res.render("./task16Views/dashboard.ejs");
  } catch (error) {
    console.log("Error inside dashboard API", error);
  }
};

const logout = (req, res) => {
  console.log("Inside logout API");
  try {
    res.status(200).clearCookie("token").json({
      type: "success",
      message: "logout successful",
    });
  } catch (error) {
    console.log("Error inside logout API", error);
  }
};

module.exports = {
  registerPage,
  registerUser,
  activateAccount,
  loginPage,
  login,
  forgotPasswordPage,
  verifyAccount,
  changePasswordPage,
  changePassword,
  dashboard,
  logout,
};
