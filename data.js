// const mysql=  require('mysql')

// const { ConnectionString } = require("connection-string");

// var pool = mysql.createConnection({
//     host: 'localhost',
//     user: 'root',
//     password:'!@Aastha0606',
//     database: 'intern',
//     port:3306
// });

// pool.connect((err)=>{
//     if(err){
//         console.log("error");
//         return;
//     }
//     console.log("done");
// });
// module.exports=pool;

const e = require('express');
var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: 'intern'
});

con.connect(function(err) {
  if (err) {
    throw err;
  }
  console.log("Connected!");
});
module.exports = con;

// const {ConnectionString} = require('connection-string');
// const cs = new ConnectionString('mysql://root:!@Aastha0606@localhost:3306/intern');

// cs.toString()
// console.log(cs.host);