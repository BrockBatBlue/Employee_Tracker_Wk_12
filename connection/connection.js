const mysql = require("mysql");
const util = require("util");


const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Itw1!Ra2bS?",
    database: "emp_trackerDB"
});
connection.query = util.promisify(connection.query)

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
});

module.exports = connection;