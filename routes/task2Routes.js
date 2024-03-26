const express = require("express");

const task2Controller = require("../controllers/task2Controllers");

const router = express.Router();

router.get("/", task2Controller.show);

module.exports = router;
