const express = require("express");

const controller = require("../controllers/task5Controllers");

const router = express.Router();

router.get("/students", controller.showData);
router.get("/result", controller.resultData);
router.get("/result/:id", controller.showOneResult);
router.post("/result", controller.search);

module.exports = router;
