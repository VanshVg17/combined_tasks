const express = require("express");
const passport = require("passport");

const controller = require("../controllers/task7Controllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.getStudents
);
router.post(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.search
);

module.exports = router;
