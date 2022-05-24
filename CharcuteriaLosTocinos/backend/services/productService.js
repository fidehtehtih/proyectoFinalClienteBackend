const db = require("../database/db");

exports.createProduct = async(params) => {

    const { prodId, name, imgProd, desc, price, cantidad, category, categoryId } = params;

    return new Promise((resolve, reject) => {

        db.query(

            `INSERT INTO products (id, title, image, description, price, quantity, short_desc, cat_id) VALUES (?,?,?,?,?,?,?,?)`, [prodId, name, imgProd, desc, price, cantidad, category, categoryId],
          
            (err, result) => {
                if (result.length > 0) {
                    reject({
                        message: "Email address is in use, please try a different one",
                        statusCode: 400,
                    });
                } else if (result.length === 0) {
                    db.query(
                        `INSERT INTO users (username, email, password) VALUES (?,?,?)`, [fullName, email, hashedPassword],
                        (err, result) => {
                            if (err) {
                                reject({
                                    message: "Something went wrong, please try again",
                                    statusCode: 400,
                                    data: err,
                                });
                            } else {
                                const token = jwt.sign({ data: result }, "secret");
                                resolve({
                                    data: result,
                                    message: "You have successfully registered.",
                                    token: token,
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