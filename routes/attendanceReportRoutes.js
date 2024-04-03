const express = require("express");
const passport = require("passport");

const controller = require("../controllers/attendanceReportControllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/students",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.showData
);
router.get(
  "/result",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.resultData
);
router.get(
  "/result/:id",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.showOneResult
);
router.post(
  "/result",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.search
);

module.exports = router;
