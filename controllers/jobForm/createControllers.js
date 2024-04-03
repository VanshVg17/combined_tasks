const util = require("util");
const utilFunction = require("../../utils");

const con = require("../../config/dbConfig");

let promisedQuery = util.promisify(con.query).bind(con);

const getForm = (req, res) => {
  console.log("Inside getForm API");
  try {
    res.render("./jobFormViews/form", {
      basicDetailsResult: [{}],
      educationDetailsResult: [{}, {}, {}],
      workExperienceResult: [{}, {}],
      knownLanguagesResult: [{}, {}, {}],
      knownTechnologiesResult: [{}, {}, {}, {}],
      referenceContactsResult: [{}],
      preferencesResult: [{}],
    });
  } catch (error) {
    console.log("Error inside getForm API", error);
  }
};

const createUser = async (req, res) => {
  console.log("Inside createUser API");
  try {
    const data = utilFunction.convertToNull(req.body);
    const {
      first_name,
      last_name,
      designation,
      address1,
      address2,
      city,
      state,
      zipcode,
      email_id,
      contact_no,
      gender,
      relationship_status,
      birth_date,
    } = data;
    let basicDetailsQuery;
    if (address2 === null) {
      basicDetailsQuery = `INSERT INTO basic_details (first_name, last_name, designation, address1, address2, city, state, zipcode, email_id, contact_no, gender, relationship_status, birth_date) VALUES ("${first_name}", "${last_name}", "${designation}", "${address1}", null, "${city}", "${state}", "${zipcode}", "${email_id}", "${contact_no}", "${gender}", "${relationship_status}", "${birth_date}" )`;
    } else {
      basicDetailsQuery = `INSERT INTO basic_details (first_name, last_name, designation, address1, address2, city, state, zipcode, email_id, contact_no, gender, relationship_status, birth_date) VALUES ("${first_name}", "${last_name}", "${designation}", "${address1}", "${address2}", "${city}", "${state}", "${zipcode}", "${email_id}", "${contact_no}", "${gender}", "${relationship_status}", "${birth_date}" )`;
    }
    let basicDetailsResult = await promisedQuery(basicDetailsQuery);
    if (
      basicDetailsResult == "{}" ||
      basicDetailsResult == "" ||
      basicDetailsResult.length == 0 ||
      basicDetailsResult.affectedRows != 1
    ) {
      return res.status(404).json({
        type: basicDetailsResult,
        message: "Server Error",
      });
    }
    const applicationId = basicDetailsResult.insertId;
    const { course, course_passing_year, course_percentage } = data;
    let i = -1;
    course.forEach(async () => {
      try {
        ++i;
        let educationDetailsQuery = `INSERT INTO education_details (application_id, course, course_passing_year, course_percentage) VALUES (${applicationId}, "${course[i]}", "${course_passing_year[i]}", "${course_percentage[i]}")`;
        let educationDetailsResult = await promisedQuery(educationDetailsQuery);
        if (
          educationDetailsResult == "{}" ||
          educationDetailsResult == "" ||
          educationDetailsResult.length == 0 ||
          educationDetailsResult.affectedRows != 1
        ) {
          return res.status(404).json({
            type: educationDetailsResult,
            message: "Server Error",
          });
        }
      } catch (error) {
        console.log(`Error inside educationDetails insert query`, error);
      }
    });

    const { company_name, company_designation, company_joining_date, company_leaving_date } = data;
    i = -1;
    company_name.forEach(async () => {
      try {
        ++i;
        if (company_name[i] != "") {
          let companyQuery = `INSERT INTO work_experiences (application_id, company_name, company_designation, company_joining_date, company_leaving_date) VALUES (${applicationId}, "${company_name[i]}", "${company_designation[i]}", "${company_joining_date[i]}", "${company_leaving_date[i]}")`;
          let companyResult = await promisedQuery(companyQuery);
          if (
            companyResult == "{}" ||
            companyResult == "" ||
            companyResult.length == 0 ||
            companyResult.affectedRows != 1
          ) {
            return res.status(404).json({
              type: companyResult,
              message: "Server Error",
            });
          }
        }
      } catch (error) {
        console.log(`Error inside workExperience insert query`, error);
      }
    });

    const { languages } = data;
    languages.forEach(async (element) => {
      try {
        let read = null,
          write = null,
          speak = null;
        data[element].forEach((element1) => {
          if (element1 === "read") {
            read = "yes";
          }
          if (element1 === "write") {
            write = "yes";
          }
          if (element1 === "speak") {
            speak = "yes";
          }
        });
        let languageQuery = `INSERT INTO known_languages (application_id, languages_name, reading, speaking, writing) VALUES (${applicationId}, "${element}", "${read}", "${write}", "${speak}")`;
        let languageResult = await promisedQuery(languageQuery);
        if (
          languageResult == "{}" ||
          languageResult == "" ||
          languageResult.length == 0 ||
          languageResult.affectedRows != 1
        ) {
          return res.status(404).json({
            type: languageResult,
            message: "Server Error",
          });
        }
      } catch (error) {
        console.log(`Error inside languages insert query`, error);
      }
    });

    const { tech_name } = data;
    tech_name.forEach(async (element) => {
      try {
        let techQuery = `INSERT INTO known_technologies (application_id, tech_name, tech_level) VALUES (${applicationId}, "${element}", "${data[element]}")`;
        let techResult = await promisedQuery(techQuery);
        if (
          techResult == "{}" ||
          techResult == "" ||
          techResult.length == 0 ||
          techResult.affectedRows != 1
        ) {
          return res.status(404).json({
            type: techResult,
            message: "Server Error",
          });
        }
      } catch (error) {
        console.log(`Error inside technologies insert query`, error);
      }
    });

    const { reference_contact_name, reference_contact_number, reference_contact_relation } = data;
    i = -1;
    reference_contact_name.forEach(async (element) => {
      try {
        ++i;
        if (element != "") {
          let referenceQuery = `INSERT INTO reference_contacts (application_id, reference_contact_name, reference_contact_number, reference_contact_relation) VALUES (${applicationId}, "${reference_contact_name[i]}", "${reference_contact_number[i]}", "${reference_contact_relation[i]}");`;
          let referenceResult = await promisedQuery(referenceQuery);
          if (
            referenceResult == "{}" ||
            referenceResult == "" ||
            referenceResult.length == 0 ||
            referenceResult.affectedRows != 1
          ) {
            return res.status(404).json({
              type: referenceResult,
              message: "Server Error",
            });
          }
        }
      } catch (error) {
        console.log(`Error inside references insert query`, error);
      }
    });

    const { prefered_location, department, notice_period, current_ctc, expected_ctc } = data;
    let preferencesQuery = `INSERT INTO preferences (application_id, prefered_location, department, notice_period, current_ctc, expected_ctc) VALUES (${applicationId}, "${prefered_location}", "${department}", "${notice_period}", "${current_ctc}", "${expected_ctc}");`;
    let preferencesResult = await promisedQuery(preferencesQuery);
    if (
      preferencesResult == "{}" ||
      preferencesResult == "" ||
      preferencesResult.length == 0 ||
      preferencesResult.affectedRows != 1
    ) {
      return res.status(404).json({
        type: preferencesResult,
        message: "Server Error",
      });
    }
    return res.redirect("/task8/showUsers");
  } catch (error) {
    console.log("Error inside createUser API", error);
  }
};

module.exports = { getForm, createUser };
