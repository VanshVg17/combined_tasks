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

let getIndex = (symbol, searchString) => {
  let index = [];

  for (let i = 0; i < searchString.length; i++) {
    if (searchString[i] == symbol) {
      index.push(i);
    }
  }
  return index;
};

let getString = (field, searchString, index) => {
  let fieldValue = [];
  for (let i = 0; i < index.length; i++) {
    let s = "";
    for (let j = index[i] + 1; j < searchString.length; j++) {
      if (
        searchString[j] === "_" ||
        searchString[j] === "^" ||
        searchString[j] === "$" ||
        searchString[j] === "}" ||
        searchString[j] === "{" ||
        searchString[j] === ":"
      ) {
        break;
      } else {
        s += searchString[j];
      }
    }
    fieldValue.push(s);
  }
  let query = ` (`;
  query += `${field} LIKE "%${fieldValue[0]}%"`;
  for (let i = 1; i < fieldValue.length; i++) {
    query += ` OR ${field} LIKE "%${fieldValue[i]}%"`;
  }
  query += `)`;
  return query;
};

let getQuery = (fieldIndex, fieldQuery) => {
  let query = `SELECT * FROM student_master_27_feb WHERE`;
  let count = 0;

  if (fieldIndex.studentId.length > 0) {
    if (count > 0) {
      query += ` AND`;
    }
    count++;
    query += fieldQuery.studentId;
  }
  if (fieldIndex.firstName.length > 0) {
    if (count > 0) {
      query += ` AND`;
    }
    count++;
    query += fieldQuery.firstName;
  }
  if (fieldIndex.lastName.length > 0) {
    if (count > 0) {
      query += ` AND`;
    }
    count++;
    query += fieldQuery.lastName;
  }
  if (fieldIndex.contactNo.length > 0) {
    if (count > 0) {
      query += ` AND`;
    }
    count++;
    query += fieldQuery.contactNo;
  }
  if (fieldIndex.emailId.length > 0) {
    if (count > 0) {
      query += ` AND`;
    }
    count++;
    query += fieldQuery.emailId;
  }
  if (fieldIndex.gender.length > 0) {
    if (count > 0) {
      query += ` AND`;
    }
    count++;
    query += fieldQuery.gender;
  }
  return query;
};

module.exports = { generateJwtToken, getIndex, getString, getQuery };
