const util = require("util");

const con = require("../config/dbConfig");

let promisedQuery = util.promisify(con.query).bind(con);

const getPage = (req, res) => {
  console.log("Inside getPage API");
  try {
    res.render("./task12Views/home.ejs", { data: false });
  } catch (error) {
    console.log("Error inside getPage API", error);
  }
};

const getField = async (req, res) => {
  console.log("Inside getField API");
  try {
    let { field_name } = req.body;
    field_name = field_name.replaceAll('"', "");
    field_name = field_name.trim();

    let query = `SELECT * FROM selects_master JOIN options_master ON selects_master.id=options_master.select_id WHERE select_name = "${field_name}";`;
    let result = await promisedQuery(query);

    if (result.length === 0) {
      return res.send("Enter correct field name");
    }
    res.render("./task12Views/home", { data: result });
  } catch (error) {
    console.log("Error inside getField API", error);
  }
};

module.exports = { getPage, getField };
