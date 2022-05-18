const { updateUserValidation } = require("../middleware/validation");
const db = require("../database/db");
const md5 = require("md5");

exports.updateUser = async(params) => {
    const { error } = updateUserValidation(params);
    if (error) throw { message: error.details[0].message, statusCode: 400 };

    const { userId, username, email, password } = params;
    //const hashedPassword = md5(password.toString());
    const hashedPassword = password.toString();
    return new Promise((resolve, reject) => {
        db.query(
            `SELECT * FROM users WHERE user_id = ? AND password = ?`, [userId, hashedPassword],
            (err, result) => {
                if (err) reject({ message: err, statusCode: 500 });

                if (result.length === 0) {
                    reject({
                        message: "Wrong credentials, please try again",
                        statusCode: 400,
                    });
                } else {
                    if (email === result[0].email && username === result[0].username) {
                        reject({
                            message: "No new data has been provided",
                            statusCode: 400,
                        });
                    }

                    let query = "";

                    if (email !== result[0].email && username !== result[0].username) {
                        query = `username = '${username}', email = '${email}'`;
                    } else if (email !== result[0].email) {
                        query = `email = '${email}'`;
                    } else {
                        query = `username = '${username}'`;
                    }

                    db.query(
                        `UPDATE users SET ${query} WHERE user_id = ?`, [userId],
                        (err, result) => {
                            if (err) throw { message: err, statusCode: 500 };
                            resolve({
                                message: "User details have been successfully updated",
                                data: result,
                            });
                        }
                    );
                }
            }
        );
    });
};