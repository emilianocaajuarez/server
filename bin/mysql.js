const mysql = require('mysql2/promise');
module.exports.pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'elalfajorestacaro',
    database: 'turnero',
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0
})

