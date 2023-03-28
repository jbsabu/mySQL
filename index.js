const mysql = require('mysql2');

const connection = require('./connection.js')
const db = mysql.createConnection(connection);

db.query('SELECT * FROM customers;',(err,data)=>{
  if (err){
    console.error(err)
  } else {
    console.log(data)
    console.table(data)
  }
  db.end()
})
