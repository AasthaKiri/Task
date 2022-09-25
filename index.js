const express = require('express')
const path = require('path')
const app = express();
// const  pool = require('./db.js')
const con = require('./data')
const port = 3000
// const cors = require('cors')
app.use(express.json())

app.get('/', (req, res) => {
    res.send('hello')
})

// app.get('/a',(req,res) =>{
//     pool.getConnection(function(err,conn){
//         const abc =  pool.query('select * from branch',function(err,rows){
//             if(err){
//                 console.log("error");
//             }
//             res.json(rows)
//         })
//     res.json(abc.rows)
//     })
// })

// app.get('/data',(req,res) =>{
//     const abc = con.query('select * from branch ')
//     res.json(abc.rows)
//     console.log(abc.rows);
//     // res.json({test:'test'})
// })

app.get('/d',(req,res) =>{
    let sql = "select chalan_no,chalan_date,station_from,station_to,inwarded,vehicle_no from chalan_master cross join vehicle_master on (vehicle_master.vehicle_id = chalan_master.vehicle_id) where vehicle_master.vehicle_no like 'GJ01%' && (chalan_master.chalan_date between '2022-06-01' and '2022-06-30') and (chalan_master.created_from = 1);";
    con.query(sql ,(err,result) =>{
        if(err)throw err;
        // console.log(result);
        res.send(result)
    })
})

// app.get('/da',(req,res) =>{
//     let sql = "select chalan_no,chalan_date,station_from,station_to,inwarded,vehicle_no from chalan_master cross join vehicle_master on (vehicle_master.vehicle_id = chalan_master.vehicle_id) ;";
//     con.query(sql ,(err,result) =>{
//         if(err)throw err;
//         // console.log(result);
//         res.send(result)
//     })
// })

// app.post('/e',(req,res)=>{
//     const {branch_id,branch_name} = req.body
//     const add = con.query("insert into branch (branch_id,branch_name)  values  ($1,$2) ", [branch_id , branch_name])
//     res.json(add.rows)
// })


app.listen(port, () =>{
    console.log(`Blog  app is listening to http://localhost:${port}`)
})
