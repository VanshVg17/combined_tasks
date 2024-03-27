const con = require("../config/dbConfig");
const util = require("util");

let promisedQuery = util.promisify(con.query).bind(con);

const invalidRoute = (req, res) => {
  res.render("./task6Views/invalidPage");
};

const showData = async (req, res) => {
  console.log("showData API is called");

  try {
    let query;
    // let query = req.headers.cookie.split(";")[1].split("=")[1];
    // console.log(query);
    if (req.query.page === undefined) {
      return res.redirect("/task6/query?page=1");
    }
    if (req.body.query !== undefined) {
      query = req.body.query;
    } else if (req.query.query !== undefined) {
      query = req.query.query;
    } else {
      return res.render("./task6Views/grid.ejs", {
        result: false,
        fields: false,
        page: false,
        query: "Enter a query",
        lastpage: false,
        limit: "Enter a limit",
        status: 200,
        errorMessage: "None",
        field: false,
        order: false,
      });
    }

    let page = Number(req.query.page);

    let records_per_page;
    let limit;
    if (query.search(/limit/i) > -1) {
      let num = query.search(/limit/i);
      let num1;
      for (let i = num + 5; i < query.length; i++) {
        if (!isNaN(query[i])) {
          if (num1 === undefined) {
            num1 = query[i];
          } else {
            num1 += query[i];
          }
        } else if (query[i] === ",") {
          break;
        }
      }
      records_per_page = Number(num1);
      limit = "";
    } else {
      if (!isNaN(req.body.limit) && req.body.limit != "") {
        records_per_page = req.body.limit;
      } else if (req.query.limit !== undefined) {
        records_per_page = req.query.limit;
      } else {
        console.log("Inside");
        records_per_page = 100;
      }

      req.query.limit = records_per_page;

      let start = records_per_page * (page - 1);

      limit = ` LIMIT ${start}, ${records_per_page}`;
    }

    let total_records = await promisedQuery(query);

    let total_pages = Math.ceil(total_records.length / records_per_page);

    if (page > total_pages) {
      console.log(query, "query1");
      console.log(records_per_page, "limit1");
      return res.render("./task6Views/grid.ejs", {
        result: result,
        fields: fields,
        page: page,
        query: query,
        lastpage: total_pages,
        limit: records_per_page,
        status: 404,
        errorMessage: "Page not found",
        field: false,
        order: false,
      });
    }

    let newQuery;

    if (req.query.field) {
      const { field, order } = req.query;
      newQuery = query + ` ORDER BY ${field} ${order}` + limit;
    } else {
      newQuery = query + limit;
    }

    let result = await promisedQuery(newQuery);
    let fields = Object.keys(result[0]);

    if (result.length === 0) {
      console.log(query, "query");
      console.log(records_per_page, "limit");
      return res.render("./task6Views/grid.ejs", {
        result: result,
        fields: fields,
        page: page,
        query: query,
        lastpage: total_pages,
        limit: records_per_page,
        status: 404,
        errorMessage: "Data not found",
        field: false,
        order: false,
      });
    }
    console.log(query, "query2");
    console.log(records_per_page, "limit2");
    return res.render("./task6Views/grid.ejs", {
      result: result,
      fields: fields,
      page: page,
      query: query,
      lastpage: total_pages,
      limit: records_per_page,
      status: 200,
      errorMessage: "None",
      field: req.query.field,
      order: req.query.order,
    });
  } catch (error) {
    if (error.sqlMessage) {
      res.render("./task6Views/grid.ejs", {
        result: false,
        fields: false,
        page: false,
        query: false,
        lastpage: false,
        limit: false,
        status: 500,
        errorMessage: error.sqlMessage,
      });
    } else {
      res.render("./task6Views/grid.ejs", {
        result: false,
        fields: false,
        page: false,
        query: false,
        lastpage: false,
        limit: false,
        status: 500,
        errorMessage: "Server Error",
      });
    }
    console.log("Error inside showData API", error);
  }
};

module.exports = { invalidRoute, showData };
