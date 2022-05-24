const express = require("express");
const router = express.Router();
const authController = require("../controllers/authController");
const productController =  require("../controllers/productController");

router.post("/register", authController.register_user);

router.post("/login", authController.login_user);

router.post("/product", productController.createProduct);

module.exports = router;