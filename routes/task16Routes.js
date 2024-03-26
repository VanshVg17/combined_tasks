const express = require("express");

const controller = require("../controllers/task16Controllers");
require("../config/task16Config");

const router = express.Router();

router.get("/register", controller.registerPage);
router.post("/register", controller.registerUser);
router.get("/activateAccount/:userid/:activationkey", controller.activateAccount);
router.get("/login", controller.loginPage);
router.post("/login", controller.login);
router.get("/forgotPassword", controller.forgotPasswordPage);
router.post("/verifyAccount", controller.verifyAccount);
router.get("/changePassword/:userid/:activationKey", controller.changePasswordPage);
router.post("/changePassword", controller.changePassword);
router.get("/dashboard", controller.dashboard);

module.exports = router;
