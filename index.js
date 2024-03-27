const express = require("express");
require("dotenv").config();
const bodyParser = require("body-parser");
const passport = require("passport");

require("./config/dbConfig");
const task16Routes = require("./routes/task16Routes");
const task1Routes = require("./routes/task1Routes");
const task2Routes = require("./routes/task2Routes");
const task3Routes = require("./routes/task3Routes");
const task4Routes = require("./routes/task4Routes");

const app = express();

app.set("view engine", "ejs");
app.use(express.static(__dirname + "/views"));

app.use(passport.initialize());
app.use(bodyParser.json());

app.use("/", task16Routes);
app.use("/task1", task1Routes);
app.use("/task2", task2Routes);
app.use("/task3", task3Routes);
app.use("/task4", task4Routes);

app.listen(process.env.PORT, (error) => {
  if (error) {
    console.log(`Error while creating a server`, error);
  } else {
    console.log(`Server is listening on ${process.env.PORT}`);
  }
});
