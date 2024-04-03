const express = require("express");
const passport = require("passport");

const controller = require("../controllers/dateConverterControllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.showHome
);

module.exports = router;
