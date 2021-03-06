const { createProduct } = require("../services/productService");
const { updateProduct } = require("../services/productService");
const { dropProduct } = require("../services/productService");

exports.createProduct = async(req, res, next) => {
    const { name, imgProd, desc, price, cantidad, category, categoryId } = req.body;
    createProduct({ name, imgProd, desc, price, cantidad, category, categoryId })
        .then((result) => {
            res.status(result.statusCode).send({...result });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};

exports.updateProduct = async(req, res, next) => {
    const { idProd2, name2, imgProd2, desc2, price2, cantidad2, category2, categoryId2 } = req.body;
    updateProduct({ idProd2, name2, imgProd2, desc2, price2, cantidad2, category2, categoryId2 })
        .then((result) => {
            res.status(result.statusCode).send({...result });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};

exports.dropProduct = async(req, res, next) => {
    const { idProd3 } = req.body;
    // console.log(idProd3)
    dropProduct({ idProd3 })
        .then((result) => {
            res.status(result.statusCode).send({...result });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};