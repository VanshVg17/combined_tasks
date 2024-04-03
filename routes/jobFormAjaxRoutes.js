const express = require("express");
const passport = require("passport");

const createController = require("../controllers/jobFormAjax/createControllers");
const updateController = require("../controllers/jobFormAjax/updateControllers");
require("../config/passports")(passport);

const router = express.Router();

router.get(
  "/form",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  createController.showForm
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
