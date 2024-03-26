const jwt = require("jsonwebtoken");
require("dotenv").config();

const generateJwtToken = async (data) => {
  try {
    return jwt.sign(
      {
        data: {
          first_name: data.first_name,
          last_name: data.last_name,
          contact_no: data.contact_no,
          username: data.username,
          email_id: data.email_id,
        },
      },
      process.env.JWT_SECRET_KEY,
      { expiresIn: "2h" }
    );
  } catch (error) {
    console.log("Error inside generateJwtToken util", error);
  }
};

module.exports = { generateJwtToken };
