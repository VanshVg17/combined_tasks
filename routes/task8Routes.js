const express = require("express");
const passport = require("passport");

const controller = require("../controllers/task8Controllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/form",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.getForm
);
router.post(
  "/createUser",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.createUser
);
router.get(
  "/form/:id",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.updateDetailsPage
);
router.post(
  "/updateUser/:id",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.updateUser
);
router.get(
  "/showUsers",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.showUsers
);

module.exports = router;
