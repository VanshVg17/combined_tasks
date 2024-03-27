const con = require("../config/dbConfig");
const util = require("util");

let promisedQuery = util.promisify(con.query).bind(con);

const utilFunction = require("../utils");

const getStudents = async (req, res) => {
  console.log("Inside getStudents API");
  try {
    let query = `select * from student_master_27_feb`;
    let result = await promisedQuery(query);
    if (result.length === 0) {
      return res.send("Data not found");
    }
    return res.render("./task7Views/students.ejs", { data: result, search: false });
  } catch (error) {
    console.log("Error inside getStudents API", error);
  }
};

const search = async (req, res) => {
  console.log("Inside search API");
  try {
    const { search } = req.body;

    let fieldIndex = {},
      fieldQuery = {};
    let studentIdIndex = utilFunction.getIndex("_", search);
    let studentIdQuery = utilFunction.getString("student_id", search, studentIdIndex);
    fieldIndex.studentId = studentIdIndex;
    fieldQuery.studentId = studentIdQuery;

    let firstNameIndex = utilFunction.getIndex("^", search);
    let firstNameQuery = utilFunction.getString("first_name", search, firstNameIndex);
    fieldIndex.firstName = firstNameIndex;
    fieldQuery.firstName = firstNameQuery;

    let lastNameIndex = utilFunction.getIndex("$", search);
    let lastNameQuery = utilFunction.getString("last_name", search, lastNameIndex);
    fieldIndex.lastName = lastNameIndex;
    fieldQuery.lastName = lastNameQuery;

    let contactNoIndex = utilFunction.getIndex("}", search);
    let contactNoQuery = utilFunction.getString("contact_no", search, contactNoIndex);
    fieldIndex.contactNo = contactNoIndex;
    fieldQuery.contactNo = contactNoQuery;

    let emailIdIndex = utilFunction.getIndex("{", search);
    let emailIdQuery = utilFunction.getString("email_id", search, emailIdIndex);
    fieldIndex.emailId = emailIdIndex;
    fieldQuery.emailId = emailIdQuery;

    let genderIndex = utilFunction.getIndex(":", search);
    let genderQuery = utilFunction.getString("gender", search, genderIndex);
    fieldIndex.gender = genderIndex;
    fieldQuery.gender = genderQuery;

    let query = utilFunction.getQuery(fieldIndex, fieldQuery);
    let result = await promisedQuery(query);

    if (result.length === 0) {
      return res.send("No student found");
    }

    res.render("./task7Views/students.ejs", { data: result, search: search });
  } catch (error) {
    console.log("Error inside search API", error);
  }
};

module.exports = { getStudents, search };
