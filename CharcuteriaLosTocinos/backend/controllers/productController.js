const {
    createProduct
} = require("../services/ProductService");

exports.createProduct = async(req, res, next) => {
    const { prodId, name, desc, price, imgProd } = req.body;
    createOrder({ userId, cart })
        .then((result) => {
            res.status(result.statusCode).send({...result });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};