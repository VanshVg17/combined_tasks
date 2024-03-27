const express = require("express");
const passport = require("passport");

const controller = require("../controllers/task16Controllers");
require("../config/task16Config");
require("../config/passports")(passport);

const router = express.Router();

router.get("/register", controller.registerPage);
router.post("/register", controller.registerUser);
router.get("/activateAccount/:userid/:activationkey", controller.activateAccount);
router.get("/login", controller.loginPage);
router.post("/login", controller.login);
router.get(
  "/forgotPassword",
  passport.authenticate("jwt", { session: false }),
  controller.forgotPasswordPage
);
router.post(
  "/verifyAccount",
  passport.authenticate("jwt", { session: false }),
  controller.verifyAccount
);
router.get(
  "/changePassword/:userid/:activationKey",
  passport.authenticate("jwt", { session: false }),
  controller.changePasswordPage
);
router.post(
  "/changePassword",
  passport.authenticate("jwt", { session: false }),
  controller.changePassword
);
router.get("/dashboard", passport.authenticate("jwt", { session: false }), controller.dashboard);

module.exports = router;
