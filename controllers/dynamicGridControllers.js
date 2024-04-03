const con = require("../config/dbConfig");
const util = require("util");

let promisedQuery = util.promisify(con.query).bind(con);

const invalidRoute = (req, res) => {
  res.render("./dynamicGridViews/invalidPage");
};

const showData = async (req, res) => {
  console.log("showData API is called");

  try {
    let query;

    if (req.query.page === undefined) {
      return res.redirect("/task6/query?page=1");
    }
    if (req.body.query !== undefined) {
      query = req.body.query;
    } else if (req.query.query !== undefined) {
      query = req.query.query;
    } else {
      return res.render("./dynamicGridViews/grid.ejs", {
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

    let recordsPerPage;
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
      recordsPerPage = Number(num1);
      limit = "";
    } else {
      if (!isNaN(req.body.limit) && req.body.limit != "") {
        recordsPerPage = req.body.limit;
      } else if (req.query.limit !== undefined) {
        recordsPerPage = req.query.limit;
      } else {
        recordsPerPage = 100;
      }

      req.query.limit = recordsPerPage;

      let start = recordsPerPage * (page - 1);

      limit = ` LIMIT ${start}, ${recordsPerPage}`;
    }

    let totalRecords = await promisedQuery(query);

    let totalPages = Math.ceil(totalRecords.length / recordsPerPage);

    if (page > totalPages) {
      return res.render("./dynamicGridViews/grid.ejs", {
        result: result,
        fields: fields,
        page: page,
        query: query,
        lastpage: totalPages,
        limit: recordsPerPage,
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
      return res.render("./dynamicGridViews/grid.ejs", {
        result: result,
        fields: fields,
        page: page,
        query: query,
        lastpage: totalPages,
        limit: recordsPerPage,
        status: 404,
        errorMessage: "Data not found",
        field: false,
        order: false,
      });
    }
    return res.render("./dynamicGridViews/grid.ejs", {
      result: result,
      fields: fields,
      page: page,
      query: query,
      lastpage: totalPages,
      limit: recordsPerPage,
      status: 200,
      errorMessage: "None",
      field: req.query.field,
      order: req.query.order,
    });
  } catch (error) {
    if (error.sqlMessage) {
      res.render("./dynamicGridViews/grid.ejs", {
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
      res.render("./dynamicGridViews/grid.ejs", {
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
