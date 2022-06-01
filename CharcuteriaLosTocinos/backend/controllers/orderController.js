const {
    getOrders,
    getSingleOrder,
    createOrder,
} = require("../services/orderService");

exports.create_order = async(req, res, next) => {
    const { userId, email, cart } = req.body;
    createOrder({ userId, email, cart })
        .then((result) => {
            res.status(result.statusCode).send({...result });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};

exports.get_single_order = async(req, res, next) => {
    const { orderId, userId } = req.query;
    getSingleOrder({ orderId, userId })
        .then((result) => {
            const { message, data } = result;
            res.status(200).send({ message, data });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};

exports.get_orders = async(req, res, next) => {
    const { email } = req.query;
    getOrders({ email })
        .then((result) => {
            const { message, data } = result;
            res.status(200).send({ message, data });
        })
        .catch((err) => {
            const { statusCode = 400, message } = err;
            res.status(statusCode).send({ message }) && next(err);
        });
};