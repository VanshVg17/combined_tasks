const con = require("../config/dbConfig");
const util = require("util");

const pagination = async (req, res) => {
  console.log("Inside Page API");
  let { page } = req.params;
  let records_per_page = 200;
  let total_records = 1000;
  let total_pages = total_records / records_per_page;
  try {
    if (page > total_pages) {
      return res.send("Page Not Found");
    }
    let starting = page * records_per_page - records_per_page;
    page = Number(page);
    let query = `SELECT * from student_master_26_feb LIMIT ${records_per_page} OFFSET ${starting};`;
    let promiseQuery = util.promisify(con.query).bind(con);
    let result = await promiseQuery(query);
    if (result.length === 0) {
      return res.send("No data available");
    }
    res.render("./task4Views/users.ejs", {
      data: result,
      pageno: page,
      total: total_records,
      sort: false,
      order: false,
    });
  } catch (error) {
    console.log("Error inside pagination API", error);
  }
};

const orderBy = async (req, res) => {
  console.log("Inside sort API");
  let { page, field, order } = req.params;
  let records_per_page = 200;
  let total_records = 1000;
  let total_pages = total_records / records_per_page;
  try {
    if (page > total_pages) {
      return res.send("Page Not Found");
    }
    let starting = page * records_per_page - records_per_page;
    page = Number(page);
    let query = `SELECT * from student_master_26_feb ORDER BY ${field} ${order} LIMIT ${records_per_page} OFFSET ${starting};`;
    let promiseQuery = util.promisify(con.query).bind(con);
    let result = await promiseQuery(query);
    if (result.length === 0) {
      return res.send("No data available");
    }
    res.render("./task4Views/users.ejs", {
      data: result,
      pageno: page,
      total: total_records,
      sort: field,
      order: order,
    });
  } catch (error) {
    console.log("Error inside Sort API", error);
  }
};

module.exports = { pagination, orderBy };
