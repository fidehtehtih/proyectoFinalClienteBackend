const {createProduct} = require("../services/productService");

exports.createProduct = async(req, res, next) => {
    const { prodId, name, imgProd, desc, price, cantidad, category, categoryId } = req.body;
    createProduct({ prodId, name, imgProd, desc, price, cantidad, category, categoryId })
        .then((result) => {
            res.status(result.statusCode).send({...result });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};