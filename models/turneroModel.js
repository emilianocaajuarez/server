var db = require('../bin/mysql');

module.exports.getAll = async function () {
    const [rows, fields] = await db.pool.execute("select * from perfilcomercial");

    return rows;
}


module.exports.getComercios = async function () {
    const sql = 'SELECT pc.idPerfilComercial, pc.idUsuario, pc.nombre, pc.tipo, pc.telefono, pc.mail, pc.logoURL, pc.bannerURL, d.calle, d.numero, d.departamento, d.ciudad' + 
    ' FROM perfilcomercial AS pc' +
    ' JOIN direccion as d ON pc.idUsuario = d.idUsuario';

    const [rows, fields] = await db.pool.execute(sql);
     return rows;
}

module.exports.getLocal = async function (idLocal) {
    const sql = 'SELECT pc.idPerfilComercial, pc.idUsuario, pc.nombre, pc.tipo, pc.telefono, pc.mail, pc.logoURL,'+
   '  d.calle, d.numero, d.departamento, d.ciudad,' +
   '  t.horaApertura1, t.horaApertura2, t.horaCierre1, t.horaCierre2,' +
   '  dt.idDetalleTurnero, dt.duracionTurno, dt.capacidad, dt.descripcion, dt.lunes, dt.martes, dt.miercoles, dt.jueves, dt.viernes, dt.sabado, dt.domingo' +
   ' FROM perfilcomercial AS pc' +
   ' JOIN direccion as d ON pc.idUsuario = d.idUsuario' +
   ' JOIN turnero as t ON t.idPerfilComercial = pc.idPerfilComercial' +
   ' JOIN detalleturnero as dt ON dt.idTurnero = t.idTurnero' +
   ' WHERE pc.idPerfilComercial = '+ idLocal;

    const [rows, fields] = await db.pool.execute(sql);
     return rows;
}

module.exports.getTurnosPendientes = async function (idLocal) {
    const sql = 'SELECT * from turno where idEstadoTurno = 2';

    const [rows, fields] = await db.pool.execute(sql);
     return rows;
}

module.exports.postTurno = async function (idUsuario, perfilComercial, detalleTurnero, fecha, hora, duracion, cantidad) {
    sql = 'INSERT INTO turno (idEstadoTurno, idUsuario, idPerfilComercial, idDetalleTurnero, fechaTurno, horaTurno, duracion, cantidad) '+
    ' VALUES (2, '+idUsuario+ ', '+perfilComercial+', '+detalleTurnero+', "'+fecha+'", "'+hora+'", '+duracion+', '+cantidad +')';
    console.log(sql);
    await db.pool.query(sql)
    return;
}

module.exports.getTurnosCliente = async function (idCliente) {
    const sql = 'SELECT t.*, u.nombre, u.apellido, u.edad, u.dni, u.telefono, u.mail, dt.descripcion FROM turno AS t'+
    ' JOIN usuario AS u ON u.idUsuario = t.idUsuario'+
    ' JOIN detalleturnero AS dt ON t.idDetalleTurnero = dt.idDetalleTurnero'+
    ' WHERE t.idPerfilComercial = '+idCliente;

    const [rows, fields] = await db.pool.execute(sql);
     return rows;
}

module.exports.cancelTurno = async function (idTurno) {
    sql = 'UPDATE turno as t' +
    ' SET idEstadoTurno = 3'+
    ' WHERE t.idTurno = '+idTurno;
    console.log(sql);
    await db.pool.query(sql)
    return;
}

module.exports.getTurnoUsuario = async function (idCliente) {
    const sql = 'SELECT t.idTurno, t.fechaTurno, t.horaTurno, t.duracion, t.cantidad, t.idEstadoTurno, dt.descripcion, pc.nombre, pc.telefono, pc.mail, pc.logoURL, d.calle, d.numero, d.departamento '+
    ' FROM turno AS t '+
    ' JOIN perfilcomercial AS pc ON t.idPerfilComercial = pc.idPerfilComercial'+
    ' JOIN usuario AS u ON pc.idUsuario = u.idUsuario'+
    ' JOIN direccion AS d ON d.idUsuario = u.idUsuario'+
    ' JOIN detalleturnero AS dt ON dt.idDetalleTurnero = t.idDetalleTurnero'+
    ' WHERE t.idUsuario =' + idCliente;

    const [rows, fields] = await db.pool.execute(sql);
     return rows;
}
