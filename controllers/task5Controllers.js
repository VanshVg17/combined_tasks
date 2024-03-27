const con = require("../config/dbConfig");
const util = require("util");

let promisedQuery = util.promisify(con.query).bind(con);

const showData = async (req, res) => {
  console.log("Inside showData API");

  try {
    let month, year, page;

    if (req.query.page === undefined) {
      res.redirect("/task5/students?page=1&month=december-2023");
    }

    page = Number(req.query.page);

    let records_per_page = 10;
    let start = page * records_per_page - records_per_page;

    if (page > 20) {
      return res.status(404).json({
        message: "Page not found",
      });
    }

    let arr = req.query.month.split("-");
    month = arr[0];
    year = arr[1];

    let newMonth;
    if (month === "december") {
      newMonth = 12;
    }
    if (month === "january") {
      newMonth = 1;
    }
    if (month === "february") {
      newMonth = 2;
    }

    let query = `SELECT student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name, COUNT(attendance_27_feb.attendance) AS attendance, ROUND(COUNT(attendance_27_feb.attendance)*100/31,2) AS Percentage FROM student_master_27_feb JOIN attendance_27_feb ON student_master_27_feb.student_id=attendance_27_feb.student_id WHERE attendance_27_feb.attendance="Present" AND month(attendance_27_feb.attendance_date)=${newMonth} AND year(attendance_27_feb.attendance_date)=${year} GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name ORDER BY student_master_27_feb.student_id LIMIT ${start},${records_per_page};`;

    let data = await promisedQuery(query);
    if (data.length === 0) {
      return res.render("./task5Views/errorPage.ejs", { message: "Student Not Found" });
    }
    let query1 = `SELECT student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name, COUNT(attendance_27_feb.attendance) AS attendance, ROUND(COUNT(attendance_27_feb.attendance)*100/31,2) AS Percentage FROM student_master_27_feb JOIN attendance_27_feb ON student_master_27_feb.student_id=attendance_27_feb.student_id WHERE attendance_27_feb.attendance="Present" AND month(attendance_27_feb.attendance_date)=${newMonth} AND year(attendance_27_feb.attendance_date)=${year} GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name ORDER BY student_master_27_feb.student_id`;
    let result1 = await promisedQuery(query1);

    let lastpage = Math.floor(result1.length / records_per_page);
    res.render("./task5Views/users.ejs", {
      data: data,
      month: req.query.month,
      page: page,
      lastpage: lastpage,
    });
  } catch (error) {
    console.log("Error inside showData API", error);
  }
};

const resultData = async (req, res) => {
  console.log("resultData API called");
  let page;
  try {
    if (req.query.page === undefined) {
      res.redirect("?page=1");
    }
    page = Number(req.query.page);

    if (page > 20) {
      return res.status(404).json({
        message: "Page not found",
      });
    }

    let records_per_page = 10;
    let start = page * records_per_page - records_per_page;

    let query1 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 1 GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name LIMIT ${start},${records_per_page};`;
    let terminal = await promisedQuery(query1);

    let query2 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 2 GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name LIMIT ${start},${records_per_page};`;
    let prelim = await promisedQuery(query2);

    let query3 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 3 GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name LIMIT ${start},${records_per_page};`;
    let final = await promisedQuery(query3);

    let query4 = `SELECT student_id, SUM(theory+practical) AS total FROM result_27_feb GROUP BY student_id LIMIT ${start},${records_per_page};`;
    let total = await promisedQuery(query4);

    let query = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 1 GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
    let result = await promisedQuery(query);

    if (terminal.length === 0 || prelim.length === 0 || final.length === 0) {
      return res.render("./task5Views/errorPage.ejs", { message: "Result Not Found" });
    }

    let lastpage = Math.floor(result.length / records_per_page);
    res.render("./task5Views/result.ejs", {
      terminal: terminal,
      prelim: prelim,
      final: final,
      total: total,
      page: page,
      lastpage: lastpage,
    });
  } catch (error) {
    console.log("Error inside resultData API", error);
  }
};

const showOneResult = async (req, res) => {
  console.log("showOneResult API called");
  try {
    const { id } = req.params;

    let query1 = `SELECT first_name, last_name, ROUND(COUNT(attendance)*100/91,2) AS attendance FROM student_master_27_feb JOIN attendance_27_feb ON student_master_27_feb.student_id = attendance_27_feb.student_id WHERE attendance="Present" AND attendance_27_feb.student_id=${id};`;
    let student_details = await promisedQuery(query1);

    let query2 = `SELECT subject_name, exam_id,theory, practical FROM subject_master_27_feb JOIN result_27_feb ON subject_master_27_feb.subject_id=result_27_feb.subject_id WHERE result_27_feb.student_id=${id};`;
    let subject_result = await promisedQuery(query2);

    if (subject_result.length === 0) {
      return res.render("./task5Views/errorPage.ejs", { message: "Student Not Found" });
    }

    res.render("./task5Views/fullResult.ejs", {
      student_details: student_details,
      subject_result: subject_result,
    });
  } catch (error) {
    console.log("Error inside showOneResult API", error);
  }
};

const search = async (req, res) => {
  console.log("Inside search API");
  try {
    if (req.body.student_id !== undefined && req.body.student_id !== "") {
      const { student_id } = req.body;

      let query1 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 1 AND student_master_27_feb.student_id =${student_id} GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
      let terminal = await promisedQuery(query1);

      let query2 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 2 AND student_master_27_feb.student_id =${student_id} GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
      let prelim = await promisedQuery(query2);

      let query3 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 3 AND student_master_27_feb.student_id =${student_id} GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
      let final = await promisedQuery(query3);

      let query4 = `SELECT student_id, SUM(theory+practical) AS total FROM result_27_feb WHERE student_id =${student_id};`;
      let total = await promisedQuery(query4);
      console.log(total);

      if (terminal.length === 0 || prelim.length === 0 || final.length === 0) {
        return res.render("./task5Views/errorPage.ejs", { message: "Student Not Found" });
      }

      res.render("./task5Views/result.ejs", {
        terminal: terminal,
        prelim: prelim,
        final: final,
        total: total,
        page: false,
        lastpage: false,
      });
    } else {
      console.log(req.body);
      let { first_name, last_name, email_id, option } = req.body;

      first_name = first_name.replaceAll(" ", "");
      last_name = last_name.replaceAll(" ", "");
      email_id = email_id.replaceAll(" ", "");

      let query1 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 1 AND (first_name = "${first_name}" ${option} last_name = "${last_name}" ${option} email_id = "${email_id}") GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
      let terminal = await promisedQuery(query1);

      let query2 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 2 AND (first_name = "${first_name}" ${option} last_name = "${last_name}" ${option} email_id = "${email_id}") GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
      let prelim = await promisedQuery(query2);

      let query3 = `SELECT student_master_27_feb.student_id,first_name, last_name, email_id, SUM(result_27_feb.theory) AS theory, SUM(result_27_feb.practical) AS practical, SUM(result_27_feb.theory + result_27_feb.practical) AS total FROM student_master_27_feb JOIN result_27_feb ON student_master_27_feb.student_id = result_27_feb.student_id WHERE exam_id = 3 AND (first_name = "${first_name}" ${option} last_name = "${last_name}" ${option} email_id = "${email_id}") GROUP BY student_master_27_feb.student_id, student_master_27_feb.first_name, student_master_27_feb.last_name;`;
      let final = await promisedQuery(query3);

      let query4 = `SELECT result_27_feb.student_id, SUM(theory+practical) AS total FROM student_master_27_feb JOIN result_27_feb WHERE student_master_27_feb.student_id=result_27_feb.student_id AND (first_name = "${first_name}" ${option} last_name = "${last_name}" ${option} email_id = "${email_id}") GROUP BY result_27_feb.student_id;`;
      let total = await promisedQuery(query4);

      if (terminal.length === 0 || prelim.length === 0 || final.length === 0) {
        return res.render("./task5Views/errorPage.ejs", { message: "Student Not Found" });
      }
      res.render("./task5Views/result.ejs", {
        terminal: terminal,
        prelim: prelim,
        final: final,
        total: total,
        page: false,
        lastpage: false,
      });
    }
  } catch (error) {
    console.log("Error inside search API", error);
    return res.render("./task5Views/errorPage.ejs", { message: "Please enter correct details" });
  }
};

module.exports = { showData, resultData, showOneResult, search };
