const express = require('express');
const mysql = require('mysql');

const app = express();


const connection = mysql.createConnection({
    host:'172.17.0.2',
    user: 'root',
    password: 'davidfico',
    database: 'produtos'
})

connection.connect();

app.get('/products', (req, res) => {
    connection.query('SELECT * FROM products', (err, results) => {
        if(err){
            throw error
        };
        res.send(results.map(item => ({name: item.name, price:item.price})));
    })
    res.send("Olá mundo!")
})

app.listen(9001, '0.0.0.0', () => {
    console.log('Ouvindo servidor na porta 9001!');
});