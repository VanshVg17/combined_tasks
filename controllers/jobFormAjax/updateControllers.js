const util = require("util");
const utilFunction = require("../../utils");

const con = require("../../config/dbConfig");

let promisedQuery = util.promisify(con.query).bind(con);

const updateDetailsPage = async (req, res) => {
  console.log("Inside updateDetailsPage API");
  try {
    const { id } = req.params;

    let basicDetailsQuery = `SELECT * FROM basic_details WHERE application_id=${id}`;
    let basicDetailsResult = await promisedQuery(basicDetailsQuery);
    if (basicDetailsResult.length === 0) {
      return res.status(404).json({
        message: "This applicant doesn't exist",
      });
    }

    let educationDetailsQuery = `SELECT * FROM education_details WHERE application_id=${id}`;
    let educationDetailsResult = await promisedQuery(educationDetailsQuery);

    let workExperienceQuery = `SELECT * FROM work_experiences WHERE application_id=${id}`;
    let workExperienceResult = await promisedQuery(workExperienceQuery);
    if (workExperienceResult.length < 2) {
      for (let i = workExperienceResult.length; i < 2; i++) {
        workExperienceResult.push({});
      }
    }

    let knownLanguagesQuery = `SELECT * FROM known_languages WHERE application_id=${id}`;
    let knownLanguagesResult = await promisedQuery(knownLanguagesQuery);
    if (knownLanguagesResult.length < 3) {
      for (let i = knownLanguagesResult.length; i < 3; i++) {
        knownLanguagesResult.push({});
      }
    }

    let knownTechnologiesQuery = `SELECT * FROM known_technologies WHERE application_id=${id}`;
    let knownTechnologiesResult = await promisedQuery(knownTechnologiesQuery);
    if (knownTechnologiesResult.length < 4) {
      for (let i = knownTechnologiesResult.length; i < 4; i++) {
        knownTechnologiesResult.push({});
      }
    }

    let referenceContactsQuery = `SELECT * FROM reference_contacts WHERE application_id=${id}`;
    let referenceContactsResult = await promisedQuery(referenceContactsQuery);
    if (referenceContactsResult.length < 2) {
      referenceContactsResult.push({});
    }

    let preferencesQuery = `SELECT * FROM preferences WHERE application_id=${id}`;
    let preferencesResult = await promisedQuery(preferencesQuery);
    res.render("./jobFormAjaxViews/form.ejs", {
      basicDetailsResult,
      educationDetailsResult,
      workExperienceResult,
      knownLanguagesResult,
      knownTechnologiesResult,
      referenceContactsResult,
      preferencesResult,
    });
  } catch (error) {
    console.log("Error inside updateDetailsPage", error);
  }
};

const updateUser = async (req, res) => {
  console.log("Inside updateUser API");
  try {
    const { id } = req.params;
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
    if (address2 !== null) {
      basicDetailsQuery = `UPDATE basic_details SET first_name="${first_name}", last_name="${last_name}", designation="${designation}", address1="${address1}", address2="${address2}", city="${city}", state="${state}", zipcode="${zipcode}", email_id="${email_id}", contact_no="${contact_no}", gender="${gender}", relationship_status="${relationship_status}", birth_date="${birth_date}" WHERE application_id=${id}`;
    } else {
      basicDetailsQuery = `UPDATE basic_details SET first_name="${first_name}", last_name="${last_name}", designation="${designation}", address1="${address1}", address2=${null}, city="${city}", state="${state}", zipcode="${zipcode}", email_id="${email_id}", contact_no="${contact_no}", gender="${gender}", relationship_status="${relationship_status}", birth_date="${birth_date}" WHERE application_id=${id}`;
    }

    let basicDetailsResult = await promisedQuery(basicDetailsQuery);

    if (basicDetailsResult.affectedRows < 1) {
      return res.status(500).json({
        message: "Internal Server Error",
      });
    }

    const { course, course_passing_year, course_percentage } = data;
    let i = -1;
    let educationDeleteQuery = `DELETE FROM education_details WHERE application_id=${id};`;
    await promisedQuery(educationDeleteQuery);

    course.forEach(async (element) => {
      ++i;
      try {
        if (element != "") {
          let educationDetailsQuery = `INSERT INTO education_details (application_id, course, course_passing_year, course_percentage) VALUES (${id}, "${course[i]}", "${course_passing_year[i]}", "${course_percentage[i]}")`;
          let educationDetailsResult = await promisedQuery(educationDetailsQuery);
          if (educationDetailsResult.affectedRows < 1) {
            return res.status(500).json({
              message: "Internal Server Error",
            });
          }
        }
      } catch (error) {
        console.log("Error inside educationDetails Query", error);
      }
    });

    const { company_name, company_designation, company_joining_date, company_leaving_date } = data;
    i = -1;

    let experienceDeleteQuery = `DELETE from work_experiences WHERE application_id=${id}`;
    await promisedQuery(experienceDeleteQuery);

    company_name.forEach(async (element) => {
      ++i;
      try {
        if (element != "") {
          let workExperienceQuery = `INSERT INTO work_experiences(application_id, company_name, company_designation, company_joining_date, company_leaving_date) VALUES(${id}, "${company_name[i]}", "${company_designation[i]}", "${company_joining_date[i]}", "${company_leaving_date[i]}")`;

          let workExperienceResult = await promisedQuery(workExperienceQuery);
          if (workExperienceResult.affectedRows < 1) {
            return res.status(500).json({
              message: "Internal Server Error",
            });
          }
        }
      } catch (error) {
        console.log("Error inside workExperience Query", error);
      }
    });

    const { languages } = data;
    let languagesDataQuery = `SELECT languages_name FROM known_languages WHERE application_id=${id};`;
    let languagesData = await promisedQuery(languagesDataQuery);
    let languagesNames = [];
    languagesData.forEach((element) => {
      languagesNames.push(element.languages_name);
    });

    if (languages.length < languagesNames.length) {
      languagesNames.forEach(async (element) => {
        try {
          if (!languages.includes(element)) {
            let languagesDeleteQuery = `DELETE FROM known_languages WHERE application_id=${id} AND languages_name="${element}"`;
            let languageDeleteResult = await promisedQuery(languagesDeleteQuery);
            if (languageDeleteResult.affectedRows < 1) {
              return res.status(500).json({
                message: "Internal Server Error",
              });
            }
          }
        } catch (error) {
          console.log("Error inside knownLanguages delete query", error);
        }
      });
    }

    languages.forEach(async (element) => {
      try {
        if (element != "") {
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
          let knownLanguagesQuery;
          if (languagesNames.includes(element)) {
            knownLanguagesQuery = `UPDATE known_languages SET languages_name="${element}", reading="${read}", speaking="${speak}", writing="${write}" WHERE application_id=${id} AND languages_name="${element}"`;
          } else {
            knownLanguagesQuery = `INSERT INTO known_languages (application_id, languages_name, reading, speaking, writing) VALUES (${id}, "${element}", "${read}", "${write}", "${speak}")`;
          }
          let knownLanguagesResult = await promisedQuery(knownLanguagesQuery);
          if (knownLanguagesResult.affectedRows < 1) {
            return res.status(500).json({
              message: "Internal Server Error",
            });
          }
        }
      } catch (error) {
        console.log("Error inside knownLanguages Query", error);
      }
    });

    const { tech_name } = data;
    let techDataQuery = `SELECT tech_name FROM known_technologies WHERE application_id=${id};`;
    let techData = await promisedQuery(techDataQuery);
    let techNames = [];
    techData.forEach((element) => {
      techNames.push(element.tech_name);
    });

    if (tech_name.length < techNames.length) {
      techNames.forEach(async (element) => {
        try {
          if (!tech_name.includes(element)) {
            let techDeleteQuery = `DELETE FROM known_technologies WHERE application_id=${id} AND tech_name="${element}"`;
            let techDeleteResult = await promisedQuery(techDeleteQuery);
            if (techDeleteResult.affectedRows < 1) {
              return res.status(500).json({
                message: "Internal Server Error",
              });
            }
          }
        } catch (error) {
          console.log("Error inside knownTechnologies delete query", error);
        }
      });
    }

    tech_name.forEach(async (element) => {
      try {
        let techQuery;
        if (techNames.includes(element)) {
          techQuery = `UPDATE known_technologies SET tech_name="${element}", tech_level="${data[element]}" WHERE application_id=${id} AND tech_name="${element}"`;
        } else {
          techQuery = `INSERT INTO known_technologies(application_id, tech_name, tech_level) VALUES (${id}, "${element}", "${data[element]}")`;
        }
        let techResult = await promisedQuery(techQuery);
        if (techResult.affectedRows < 1) {
          return res.status(500).json({
            message: "Internal Server Error",
          });
        }
      } catch (error) {
        console.log("Error inside knwonTechnologies query", error);
      }
    });

    const { reference_contact_name, reference_contact_number, reference_contact_relation } = data;

    let referenceDeleteQuery = `DELETE FROM reference_contacts WHERE application_id=${id}`;
    await promisedQuery(referenceDeleteQuery);

    i = -1;

    reference_contact_name.forEach(async (element) => {
      try {
        ++i;
        if (element != "") {
          let referenceContactsQuery = `INSERT INTO reference_contacts (application_id, reference_contact_name, reference_contact_number, reference_contact_relation) VALUES (${id}, "${element}", "${reference_contact_number[i]}", "${reference_contact_relation[i]}");`;
          let referenceContactsResult = await promisedQuery(referenceContactsQuery);
          if (referenceContactsResult.affectedRows < 1) {
            return res.status(500).json({
              message: "Internal Server Error",
            });
          }
        }
      } catch (error) {
        console.log("Error inside referenceContacts query", error);
      }
    });

    const { prefered_location, department, notice_period, current_ctc, expected_ctc } = data;

    let preferencesQuery = `UPDATE preferences SET prefered_location="${prefered_location}", department="${department}", notice_period="${notice_period}", current_ctc="${current_ctc}", expected_ctc="${expected_ctc}" WHERE application_id=${id}`;
    let preferencesResult = await promisedQuery(preferencesQuery);
    if (preferencesResult.affectedRows < 1) {
      return res.status(500).json({
        message: "Internal Server Error",
      });
    }

    return res.status(200).json({
      type: "success",
      message: "User updated successfully",
    });
  } catch (error) {
    console.log("Update Inside udpateUser", error);
  }
};

const showUsers = async (req, res) => {
  console.log("Inside showUsers API");
  try {
    let usersQuery = `SELECT * FROM basic_details;`;
    let usersData = await promisedQuery(usersQuery);
    res.render("./jobFormAjaxViews/users.ejs", { usersData });
  } catch (error) {
    console.log("Error inside showUsers API", error);
  }
};

module.exports = { updateDetailsPage, updateUser, showUsers };
