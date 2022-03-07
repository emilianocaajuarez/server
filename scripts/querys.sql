/*-   /usuario/inicio   -*/
SELECT pc.idPerfilComercial, pc.idUsuario, pc.nombre, pc.tipo, pc.telefono, pc.mail, pc.logoURL, d.calle, d.numero, d.departamento, d.ciudad 
FROM perfilcomercial AS pc
JOIN direccion as d ON pc.idUsuario = d.idUsuario;

/*-  /usuario/inicio/:id   -*/
SELECT pc.idPerfilComercial, pc.idUsuario, pc.nombre, pc.tipo, pc.telefono, pc.mail, pc.logoURL,
 d.calle, d.numero, d.departamento, d.ciudad,
 t.horaApertura1, t.horaApertura2, t.horaCierre1, t.horaCierre2,
 dt.idDetalleTurnero, dt.duracionTurno, dt.capacidad, dt.descripcion, dt.lunes, dt.martes, dt.miercoles, dt.jueves, dt.viernes, dt.sabado, dt.domingo
FROM perfilcomercial AS pc
JOIN direccion as d ON pc.idUsuario = d.idUsuario
JOIN turnero as t ON t.idPerfilComercial = pc.idPerfilComercial
JOIN detalleturnero as dt ON dt.idTurnero = t.idTurnero
WHERE pc.idPerfilComercial = idLocal


/*-   /comercio/turnos/:id   -*/
SELECT t.*, u.nombre, u.apellido, u.edad, u.dni, u.telefono, u.mail FROM turno AS t
JOIN usuario AS u ON u.idUsuario = t.idUsuario
JOIN detalleturnero AS dt ON t.idDetalleTurnero = dt.idDetalleTurnero
WHERE t.idPerfilComercial = idCliente;

/*-  /comercio/turnos/:id CANCELAR  -*/
UPDATE turno as t
SET idEstadoTurno = 3
WHERE t.idTurno = idTurno

/*-  /usuario/turnos/:id  -*/
SELECT t.idTurno, t.fechaTurno, t.horaTurno, t.duracion, t.capacidad, dt.descripcion, pc.nombre, pc.telefono, pc.mail, pc.logoURL, d.calle, d.numero, d.departamento 
FROM turno AS t 
JOIN perfilcomercial AS pc ON t.idPerfilComercial = pc.idPerfilComercial
JOIN usuario AS u ON pc.idUsuario = u.idUsuario
JOIN direccion AS d ON d.idUsuario = u.idUsuario
JOIN detalleturnero AS dt ON dt.idDetalleTurnero = t.idDetalleTurnero
WHERE t.idUsuario = 2

UPDATE turno SET idusuario = 8 where idturno in (44,47,48,51);
UPDATE turno SET idusuario = 9 where idturno in (45,50);
UPDATE turno SET idusuario = 10 where idturno in (46,49,52);