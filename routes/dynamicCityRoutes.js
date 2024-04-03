const express = require("express");

const controller = require("../controllers/dynamicCityControllers");

const router = express.Router();

router.get("/form", controller.show);
router.get("/getStates", controller.getStates);
router.get("/getCities/:id", controller.getCities);

module.exports = router;
