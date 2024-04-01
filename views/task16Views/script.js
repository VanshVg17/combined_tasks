const getData = (id) => {
  let form = document.getElementById(id);
  let fields = form.querySelectorAll("*");
  let data = {};
  fields.forEach((element) => {
    if (element.tagName === "INPUT") {
      data[element.name] = element.value;
    }
  });
  return data;
};

const register = async () => {
  let errorFields = document.getElementsByClassName("error");
  Object.keys(errorFields).forEach((element) => {
    errorFields[element].style.display = "none";
  });
  document.getElementById("username").style.border = "1px solid black";
  document.getElementById("email_id").style.border = "1px solid black";
  document.getElementById("contact_no").style.border = "1px solid black";
  document.getElementById("create_password").style.border = "1px solid black";
  document.getElementById("confirm_password").style.border = "1px solid black";

  if (!validation()) {
    return;
  }

  let data = getData("register");
  const register = await fetch("/register", {
    method: "post",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data),
  });

  let response = await register.json();
  if (response.type == "success") {
    document.write(
      `<p>Copy below link and paste it in url tab under 30 minutes to activate your account</p> <a href='http://localhost:3000/activateAccount/${response.userid}/${response.activationKey}'>http://localhost:3000/activateAccount/${response.userid}/${response.activationKey}</a>`
    );
    return;
  }
  if (response.type == "username") {
    document.getElementById("username").style.border = "1px solid red";
    document.getElementById("username_error").style.display = "inline";
  }
  if (response.type == "email") {
    document.getElementById("email_id").style.border = "1px solid red";
    document.getElementById("email_error").style.display = "inline";
    document.getElementById("email_error").innerHTML = "Email is already taken";
  }
};

const toggleCreatePass = (type) => {
  if (type === "show") {
    document.getElementById("create_password").type = "password";
    document.getElementsByClassName("showpass")[0].style.display = "none";
    document.getElementsByClassName("hidepass")[0].style.display = "inline";
  } else {
    document.getElementById("create_password").type = "text";
    document.getElementsByClassName("showpass")[0].style.display = "inline";
    document.getElementsByClassName("hidepass")[0].style.display = "none";
  }
};

const toggleConfirmPass = (type) => {
  if (type === "show") {
    document.getElementById("confirm_password").type = "password";
    document.getElementsByClassName("showpass")[1].style.display = "none";
    document.getElementsByClassName("hidepass")[1].style.display = "inline";
  } else {
    document.getElementById("confirm_password").type = "text";
    document.getElementsByClassName("showpass")[1].style.display = "inline";
    document.getElementsByClassName("hidepass")[1].style.display = "none";
  }
};

const togglePass = (type) => {
  if (type === "show") {
    document.getElementById("password").type = "password";
    document.getElementsByClassName("showpass")[0].style.display = "none";
    document.getElementsByClassName("hidepass")[0].style.display = "inline";
  } else {
    document.getElementById("password").type = "text";
    document.getElementsByClassName("showpass")[0].style.display = "inline";
    document.getElementsByClassName("hidepass")[0].style.display = "none";
  }
};

const login = async () => {
  let errorFields = document.getElementsByClassName("error");
  Object.keys(errorFields).forEach((element) => {
    errorFields[element].style.display = "none";
  });
  let data = getData("login");
  let login = await fetch("/login", {
    method: "post",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data),
  });
  let response = await login.json();
  if (response.type == "credentials") {
    document.getElementById("error").style.display = "inline";
    document.getElementById("error").innerHTML = "Invalid Credentials";
  }
  if (response.type == "activation") {
    document.getElementById("error").style.display = "inline";
    document.getElementById("error").innerHTML = "Your account isn't activated";
  }
  if (response.type == "success") {
    window.location.href = "/dashboard";
  }
};

const validation = () => {
  let flag = true;

  let contactField = document.getElementById(`contact_no`).value;
  if (isNaN(contactField.toString()) || contactField.toString().length != 10) {
    document.getElementById("contact_no").style.border = "1px solid red";
    document.getElementById(`contact_no_error`).style.display = "inline";
    document.getElementById("contact_no_error").style.display = "Invalid Mobile Number";
    flag = false;
  }

  let emailRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
  let emailField = document.getElementById(`email_id`).value;
  if (!emailRegex.test(emailField)) {
    document.getElementById("email_id").style.border = "1px solid red";
    document.getElementById(`email_error`).style.display = "inline";
    document.getElementById("email_error").innerHTML = "Invalid Email ID";
    flag = false;
  }

  let create_password = document.getElementById("create_password").value;
  let confirm_password = document.getElementById("confirm_password").value;

  if (create_password.toString().length < 5) {
    document.getElementById("create_password").style.border = "1px solid red";
    document.getElementById("password_error").style.display = "inline";
    flag = false;
  } else if (create_password != confirm_password) {
    document.getElementById("create_password").style.border = "1px solid red";
    document.getElementById("confirm_password").style.border = "1px solid red";
    document.getElementById("confirm_password_error").style.display = "inline";
    flag = false;
  }
  return flag;
};

const forgotPassword = async () => {
  let data = {};
  let name = document.getElementById("forgot-password-field");
  if (name.value == "") {
    name.style.border = "1px solid red";
    document.getElementById("error").style.display = "inline";
    document.getElementById("error").innerHTML = "Above input must not be empty";
    return;
  }
  data.name = name.value;
  let forgotPassword = await fetch("/verifyAccount", {
    method: "post",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data),
  });
  let response = await forgotPassword.json();
  if (response.type == "credentials") {
    name.style.border = "1px solid red";
    document.getElementById("error").style.display = "inline";
    document.getElementById("error").innerHTML = "Invalid credentials";
  } else if (response.type == "activation") {
    name.style.border = "1px solid red";
    document.getElementById("error").style.display = "inline";
    document.getElementById("error").innerHTML = "Account isn't activated";
  }
  if (response.type == "success") {
    document.write(
      `<p>Please copy below link in URL tab to change your password</p><a href="http://localhost:3000/changePassword/${response.userid}/${response.activationKey}">http://localhost:3000/changePassword/${response.userid}/${response.activationKey}</a>`
    );
  }
};

const changePassword = async () => {
  let errorFields = document.getElementsByClassName("change-error");
  Object.keys(errorFields).forEach((element) => {
    errorFields[element].style.display = "none";
  });

  let flag = true;
  let create_password = document.getElementById("create_password").value;
  let confirm_password = document.getElementById("confirm_password").value;

  if (create_password.toString().length < 5) {
    document.getElementById("create_password").style.border = "1px solid red";
    document.getElementById("password_error").style.display = "inline";
    flag = false;
  } else if (create_password != confirm_password) {
    console.log("inside");
    document.getElementById("create_password").style.border = "1px solid red";
    document.getElementById("confirm_password").style.border = "1px solid red";
    document.getElementById("confirm_password_error").style.display = "inline";
    ("Password and Confirm Password must be same");
    flag = false;
  }
  if (flag == false) {
    return flag;
  }

  let url = window.location.href.split("/");
  let userid = Number(url[4]);
  let activationKey = url[5];

  let data = {};

  data.password = create_password;
  data.userid = userid;
  data.activationKey = activationKey;

  let changePassword = await fetch("/changePassword", {
    method: "post",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(data),
  });
  let response = await changePassword.json();

  if (response.type == "invalid") {
    document.write("There was some error! Please try again after sometime");
  }
  if (response.type == "same_password") {
    document.getElementById("create_password").style.border = "1px solid red";
    document.getElementById("confirm_password").style.border = "1px solid red";
    document.getElementById("confirm_password_error").style.display = "inline";
    document.getElementById("confirm_password_error").innerHTML =
      "Choose different password from last password";
  }
  if (response.type == "success") {
    document.write("<p>Password changed successfully</p> <a href='/login'>Login Here</a>");
  }
};
