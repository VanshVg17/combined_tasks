const express = require("express");
const passport = require("passport");

const createController = require("../controllers/jobForm/createControllers");
const updateController = require("../controllers/jobForm/updateControllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/form",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  createController.getForm
);
router.post(
  "/createUser",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  createController.createUser
);
router.get(
  "/form/:id",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  updateController.updateDetailsPage
);
router.post(
  "/updateUser/:id",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  updateController.updateUser
);
router.get(
  "/showUsers",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  updateController.showUsers
);

module.exports = router;
