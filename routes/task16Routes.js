const express = require("express");
const passport = require("passport");

const controller = require("../controllers/task16Controllers");
require("../config/passports")(passport);

const router = express.Router();

router.get("/register", controller.registerPage);
router.post("/register", controller.registerUser);
router.get("/activateAccount/:userid/:activationkey", controller.activateAccount);
router.get("/login", controller.loginPage);
router.post("/login", controller.login);
router.post("/verifyAccount", controller.verifyAccount);
router.get("/forgotPassword", controller.forgotPasswordPage);
router.get("/changePassword/:userid/:activationKey", controller.changePasswordPage);
router.post("/changePassword", controller.changePassword);
router.get(
  "/dashboard",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.dashboard
);
router.post("/logout", controller.logout);
router.get(
  "/",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.dashboard
);

module.exports = router;
