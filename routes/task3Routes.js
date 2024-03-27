const express = require("express");
const passport = require("passport");

require("../config/passports")(passport);
const task3Controller = require("../controllers/task3Controllers");

const router = express.Router();

router.get("/", passport.authenticate("jwt", { session: false }), task3Controller.show);

module.exports = router;
