const express = require("express");
const passport = require("passport");

const controller = require("../controllers/dynamicGridControllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/query",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.showData
);
router.post(
  "/query",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.showData
);
router.get(
  "*",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.invalidRoute
);

module.exports = router;
