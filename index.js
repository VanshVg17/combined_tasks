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
const task5Routes = require("./routes/task5Routes");
const task6Routes = require("./routes/task6Routes");
const task7Routes = require("./routes/task7Routes");
const task8Routes = require("./routes/task8Routes");
const task9Routes = require("./routes/task9Routes");
const task10Routes = require("./routes/task10Routes");
const task11Routes = require("./routes/task11Routes");
const task12Routes = require("./routes/task12Routes");

const app = express();

app.set("view engine", "ejs");
app.use(express.static(__dirname + "/views"));

app.use(passport.initialize());
app.use(express.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use("/", task16Routes);
app.use("/task1", task1Routes);
app.use("/task2", task2Routes);
app.use("/task3", task3Routes);
app.use("/task4", task4Routes);
app.use("/task5", task5Routes);
app.use("/task6", task6Routes);
app.use("/task7", task7Routes);
app.use("/task8", task8Routes);
app.use("/task9", task9Routes);
app.use("/task10", task10Routes);
app.use("/task11", task11Routes);
app.use("/task12", task12Routes);

app.listen(process.env.PORT, (error) => {
  if (error) {
    console.log(`Error while creating a server`, error);
  } else {
    console.log(`Server is listening on ${process.env.PORT}`);
  }
});
