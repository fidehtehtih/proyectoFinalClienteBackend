const express = require("express");
const router = express.Router();
const productController = require("../controllers/productController");

router.post("/create", productController.createProduct);

router.post("/update", productController.updateProduct);

router.post("/delete", productController.dropProduct);

module.exports = router;