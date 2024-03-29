const con = require("../config/dbConfig");
const util = require("util");

let promiseQuery = util.promisify(con.query).bind(con);

const pagination = async (req, res) => {
  console.log("Inside Page API");
  let { page } = req.params;

  let query1 = `SELECT * from student_master_26_feb`;
  let result1 = await promiseQuery(query1);
  let total_records = result1.length;

  let records_per_page = 20;
  let total_pages = Math.ceil(total_records / records_per_page);
  try {
    if (page > total_pages) {
      return res.send("Page Not Found");
    }
    let starting = page * records_per_page - records_per_page;
    let query = `SELECT * from student_master_26_feb LIMIT ${records_per_page} OFFSET ${starting};`;
    let result = await promiseQuery(query);
    if (result.length === 0) {
      return res.send("No data available");
    }

    res.render("./task4Views/users.ejs", {
      data: result,
      pageno: Number(page),
      total: total_records,
      sort: false,
      order: false,
      lastpage: total_pages,
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
  let total_records = result1.length;

  let records_per_page = 20;
  let total_pages = Math.ceil(total_records / records_per_page);
  try {
    if (page > total_pages) {
      return res.send("Page Not Found");
    }
    let starting = page * records_per_page - records_per_page;
    let query = `SELECT * from student_master_26_feb ORDER BY ${field} ${order} LIMIT ${records_per_page} OFFSET ${starting};`;
    let promiseQuery = util.promisify(con.query).bind(con);
    let result = await promiseQuery(query);
    if (result.length === 0) {
      return res.send("No data available");
    }
    res.render("./task4Views/users.ejs", {
      data: result,
      pageno: Number(page),
      total: total_records,
      sort: field,
      order: order,
      lastpage: total_pages,
    });
  } catch (error) {
    console.log("Error inside Sort API", error);
  }
};

module.exports = { pagination, orderBy };
