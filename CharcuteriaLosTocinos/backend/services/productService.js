const db = require("../database/db");
// const imagesNull = NULL;
exports.createProduct = async(params) => {

    const { name, imgProd, desc, price, cantidad, category, categoryId } = params;
    console.log(params);
    return new Promise((resolve, reject) => {

        db.query(

            `SELECT title FROM products WHERE title = ?`, [name],

            (err, result) => {
                if (result.length > 0) {
                    reject({
                        message: "name is in use, please try a different one",
                        statusCode: 400,
                        data:err,
                    });
                } else if (result.length === 0) {
                    db.query(
                        `INSERT INTO products (title, image, description, price, quantity, short_desc, cat_id) VALUES (?,?,?,?,?,?,?)`, [name, imgProd, desc, price, cantidad, category, categoryId],
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
                                    message: "You have successfully registered.",
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