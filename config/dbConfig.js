const mysql = require("mysql");
require("dotenv").config();

const con = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
});

con.connect((error) => {
  if (error) {
    console.log("Error while connecting to database", error);
  } else {
    console.log(`Database is connected`);
  }
});

module.exports = con;
