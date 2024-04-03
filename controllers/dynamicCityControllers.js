const util = require("util");

const con = require("../config/dbConfig");

let promisedQuery = util.promisify(con.query).bind(con);

const show = (req, res) => {
  console.log("show API called");
  try {
    res.render("./dynamicCityViews/form.ejs");
  } catch (error) {
    console.log("Error inside show API", error);
  }
};

const getStates = async (req, res) => {
  console.log("getStates API called");
  try {
    let query = `SELECT * from states`;
    let result = await promisedQuery(query);
    res.send(result);
  } catch (error) {
    console.log("Error inside getStates API", error);
  }
};

const getCities = async (req, res) => {
  console.log("getCities API called");
  try {
    const { id } = req.params;
    let query = `SELECT * from cities WHERE state_id=${id}`;
    let result = await promisedQuery(query);
    res.send(result);
  } catch (error) {
    console.log("Error inside getCities API", error);
  }
};

module.exports = { show, getStates, getCities };
