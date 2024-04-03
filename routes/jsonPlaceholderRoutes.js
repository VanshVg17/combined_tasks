const express = require("express");

const controller = require("../controllers/jsonPlaceholderControllers");

const router = express.Router();

router.get("/posts", controller.posts);
router.get("/post-details/:id", controller.postDetails);

module.exports = router;
