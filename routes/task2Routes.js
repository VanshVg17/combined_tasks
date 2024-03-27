const express = require("express");
const passport = require("passport");

require("../config/passports")(passport);
const task2Controller = require("../controllers/task2Controllers");

const router = express.Router();

router.get(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  task2Controller.show
);

module.exports = router;
