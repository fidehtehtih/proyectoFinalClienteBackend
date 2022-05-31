const db = require("../database/db");

exports.createProduct = async(params) => {
    const { name, imgProd, desc, price, cantidad, category, categoryId } = params;
    console.log(params);
    return new Promise((resolve, reject) => {

        db.query(

            `SELECT title FROM products WHERE title = ?`, [name],

            (err, result) => {
                if (result.length > 0) {
                    reject({
                        message: "Name is in use, please try a different one",
                        statusCode: 400,
                        data: err,
                    });
                } else if (result.length === 0) {
                    db.query(
                        `INSERT INTO products (title, image, description, price, quantity, short_desc, cat_id) VALUES (?,?,?,?,?,?,?)`, [name, imgProd, desc, price, cantidad, category, categoryId],
                        (err, result) => {
                            if (err) {
                                reject({
                                    message: "Something went wrong, please try again " + err,
                                    statusCode: 400,
                                    data: err,
                                });
                            } else {
                                // const token = jwt.sign({ data: result }, "secret");
                                resolve({
                                    data: result,
                                    message: "You have successfully insert " + name,
                                    // token: token,
                                    statusCode: 200,
                                });
                            }
                        }
                    );
                }
            }
        );
    });
};

exports.updateProduct = async(params) => {
    const { idProd2, name2, imgProd2, desc2, price2, cantidad2, category2, categoryId2 } = params;
    console.log(params);
    return new Promise((resolve, reject) => {

        db.query(

            `SELECT id FROM products WHERE id = ?`, [idProd2],

            (err, result) => {
                if (result.length === 0) {
                    reject({
                        message: "Id did not exist U",
                        statusCode: 400,
                        data: err,
                    });
                } else if (result.length > 0) {
                    let query = "";
                    query = `title = '${name2}', image = '${imgProd2}', description = '${desc2}', price = '${price2}', quantity = '${cantidad2}', short_desc = '${category2}', cat_id = '${categoryId2}'`;
                    db.query(
                        `UPDATE products SET ${query} WHERE id = ?`, [idProd2],
                        (err, result) => {
                            if (err) {
                                reject({
                                    message: "Something went wrong, please try again" + err,
                                    statusCode: 400,
                                    data: err,
                                });
                            } else {
                                // const token = jwt.sign({ data: result }, "secret");
                                resolve({
                                    data: result,
                                    message: "You have successfully updated " + name2,
                                    // token: token,
                                    statusCode: 200,
                                });
                            }
                        }
                    );
                }
            }
        );
    });
};


exports.dropProduct = async(params) => {
    const { idProd3 } = params;
    console.log(params);
    return new Promise((resolve, reject) => {
        db.query(
            `DELETE FROM products WHERE id = ?`, [idProd3],
            (err, result) => {
                if (result.length == 0) {
                    reject({
                        message: "You have successfully drop",
                        statusCode: 400,
                        data: err,
                    });
                } else if (result.length > 0) {
                    db.query(
                        `SELECT id FROM products WHERE id = ?`, [idProd3],
                        (err, result) => {
                            if (err) {
                                reject({
                                    message: "Something went wrong, please try again" + err,
                                    statusCode: 400,
                                    data: err,
                                });
                            } else {
                                resolve({
                                    data: result,
                                    message: "Id did not exist E",
                                    statusCode: 200,
                                });
                            }
                        }
                    );
                }
            }
        );
    });
};