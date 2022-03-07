const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const port = 3001;

const turneros = require('./controllers/turneros');
const { json } = require('body-parser');

var jsonParser = bodyParser.json();

var urlencodedParser = bodyParser.urlencoded({extended:false});

app.use(function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Origin', '*', "Origin, X-Requested-With, Content-Type, Accept");
    next();
});

app.get('/', turneros.getAll);
app.get('/usuario/inicio', turneros.getComercios);
app.get('/usuario/inicio/:id', turneros.getLocal);
app.get('/usuario/inicio/:id/pendientes', turneros.getTurnosPendientes);
app.post('/usuario/inicio/:id',urlencodedParser, turneros.postTurno);
app.get('/comercio/turnos/:id', turneros.getTurnosCliente);
app.post('/comercio/turnos/:id',urlencodedParser, turneros.cancelTurno);
app.post('/usuario/turnos/:id', urlencodedParser, turneros.cancelTurno);
app.get('/usuario/turnos/:id', turneros.getTurnoUsuario);


app.listen(port, () => {
    console.log(`example app listening at http://localhost:${port}`)
})