const express = require("express");
const passport = require("passport");

const controller = require("../controllers/paginationControllers");
require("../config/passports")(passport);

const router = express.Router();

router.get("/users/:page", passport.authenticate("jwt", { session: false }), controller.pagination);
router.get(
  "/users/:page/sortby/:field/:order",
  passport.authenticate("jwt", { session: false, failureRedirect: "/login" }),
  controller.orderBy
);

module.exports = router;
