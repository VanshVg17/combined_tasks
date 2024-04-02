const express = require("express");
require("dotenv").config();
const bodyParser = require("body-parser");
const passport = require("passport");
const cookieParser = require("cookie-parser");

require("./config/dbConfig");
const routes = require("./routes/mainRoutes");

const app = express();

app.set("view engine", "ejs");

app.use(express.static(__dirname + "/views"));
app.use(cookieParser());
app.use(passport.initialize());
app.use(express.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use("/", routes);

app.listen(process.env.PORT, (error) => {
  if (error) {
    console.log(`Error while creating a server`, error);
  } else {
    console.log(`Server is listening on ${process.env.PORT}`);
  }
});
