const express = require("express");
const passport = require("passport");

require("../config/passports")(passport);
const task1Controller = require("../controllers/task1Controllers");

const router = express.Router();

router.get(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  task1Controller.show
);

module.exports = router;
