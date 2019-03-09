// Pull in required dependencies
var mysql = require('mysql');
require('dotenv/config');

// Create the MySQL connection object
var connection;

if (process.env.JAWSDB_CRIMSON) {
	// DB is JAWSDB_CRIMSON on Heroku
	connection = mysql.createConnection(process.env.JAWSDB_CRIMSON);
} else {
	// DB is local on localhost
	connection = mysql.createConnection({
		port: 3306,
		host: 'localhost',
		user: 'root',
		password: 'yourRootPassword',
		database: 'burgers_db'
	})
};

// Make the connection to MySQL
connection.connect(function(err) {
  if (err) {
    console.error('ERROR: MySQL connection error -- ' + err.stack + '\n\n');
    return;
  }
  console.log('Connected to MySQL database as id ' + connection.threadId + '\n\n');
});

// Export connection for ORM use
module.exports = connection;