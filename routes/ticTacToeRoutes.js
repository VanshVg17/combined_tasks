const express = require("express");
const passport = require("passport");

require("../config/passports")(passport);
const task3Controller = require("../controllers/ticTacToeControllers");

const router = express.Router();

router.get(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  task3Controller.show
);

module.exports = router;
