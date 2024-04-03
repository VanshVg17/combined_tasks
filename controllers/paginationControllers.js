const con = require("../config/dbConfig");
const util = require("util");

let promiseQuery = util.promisify(con.query).bind(con);

const pagination = async (req, res) => {
  console.log("Inside Page API");
  let { page } = req.params;

  let query1 = `SELECT * from student_master_26_feb`;
  let result1 = await promiseQuery(query1);
  let totalRecords = result1.length;

  let recordsPerPage = 20;
  let totalPages = Math.ceil(totalRecords / recordsPerPage);
  try {
    if (page > totalPages) {
      return res.send("Page Not Found");
    }
    let starting = page * recordsPerPage - recordsPerPage;
    let query = `SELECT * from student_master_26_feb LIMIT ${recordsPerPage} OFFSET ${starting};`;
    let result = await promiseQuery(query);
    if (result.length === 0) {
      return res.send("No data available");
    }

    res.render("./paginationViews/users.ejs", {
      data: result,
      pageno: Number(page),
      total: totalRecords,
      sort: false,
      order: false,
      lastpage: totalPages,
    });
  } catch (error) {
    console.log("Error inside pagination API", error);
  }
};

const orderBy = async (req, res) => {
  console.log("Inside sort API");
  let { page, field, order } = req.params;

  let query1 = `SELECT * from student_master_26_feb`;
  let result1 = await promiseQuery(query1);
  let totalRecords = result1.length;

  let recordsPerPage = 20;
  let totalPages = Math.ceil(totalRecords / recordsPerPage);
  try {
    if (page > totalPages) {
      return res.send("Page Not Found");
    }
    let starting = page * recordsPerPage - recordsPerPage;
    let query = `SELECT * from student_master_26_feb ORDER BY ${field} ${order} LIMIT ${recordsPerPage} OFFSET ${starting};`;
    let promiseQuery = util.promisify(con.query).bind(con);
    let result = await promiseQuery(query);
    if (result.length === 0) {
      return res.send("No data available");
    }
    res.render("./paginationViews/users.ejs", {
      data: result,
      pageno: Number(page),
      total: totalRecords,
      sort: field,
      order: order,
      lastpage: totalPages,
    });
  } catch (error) {
    console.log("Error inside Sort API", error);
  }
};

module.exports = { pagination, orderBy };
