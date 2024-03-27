const express = require("express");

const controller = require("../controllers/task4Controllers");

const router = express.Router();

router.get("/users/:page", controller.pagination);
router.get("/users/:page/sortby/:field/:order", controller.orderBy);

module.exports = router;
