INSERT INTO turnero(idPerfilComercial, horaApertura1, horaCierre1, horaApertura2, horaCierre2)
VALUES 
(1, '08:00:00', '12:00:00', '15:00:00', '19:00:00'),
(2, '10:00:00', '18:00:00', NULL, NULL),
(3, '08:00:00', '19:00:00', NULL, NULL),
(4, '09:00:00', '22:00:00', NULL, NULL),
(5, '16:00:00', '00:00:00', NULL, NULL),
(6, '09:00:00', '13:00:00', '16:00:00', '20:00:00');




INSERT INTO detalleturnero (idTurnero, duracionTurno, capacidad, descripcion, lunes, martes, miercoles, jueves, viernes, sabado, domingo)
VALUES
(1, 30, 2, 'Asesor 1', 1, 1, 1, 1, 1, 0, 0),
(1, 30, 2, 'Asesor 2', 1, 1, 1, 1, 1, 0, 0),
(1, 30, 2, 'Asesor 3', 1, 1, 1, 1, 1, 0, 0),
(2, 45, 2, 'Experto 1', 1, 1, 1, 1, 1, 0, 0),
(2, 45, 2, 'Experto 2', 1, 1, 1, 1, 1, 0, 0),
(2, 45, 2, 'Experto 3', 1, 1, 1, 1, 1, 0, 0),
(3, 60, 2, 'Oftalmología ', 1, 1, 1, 1, 1, 0, 0),
(3, 60, 2, 'Medicina General ', 1, 1, 1, 1, 1, 0, 0),
(3, 60, 2, 'Cirugía ', 1, 1, 1, 1, 1, 0, 0),
(3, 60, 2, 'Odontología ', 1, 1, 1, 1, 1, 0, 0),
(4, 30, 1, 'Panadero 1', 1,1,1,1,1,1,0),
(4, 30, 1, 'Panadero 2', 1,1,1,1,1,1,0),
(4, 30, 1, 'Panadero 3', 1,1,1,1,1,1,0),
(5, 90, 4, 'Mesa de 4', 0,0,0,1,1,1,1),
(5, 90, 6, 'Mesa de 6', 0,0,0,1,1,1,1),
(5, 90, 8, 'Mesa de 8', 0,0,0,1,1,1,1),
(6, 45, 2, 'Agente 1',1,1,1,1,1,0,0),
(6, 45, 2, 'Agente 2',1,1,1,1,1,0,0);


INSERT INTO turno (idEstadoTurno, idUsuario, idPerfilComercial, idDetalleTurnero, fechaTurno, horaTurno, duracion, cantidad)
VALUES
(2, 8, 1, 3, '2020-11-26', '08:00:00', 30, 2),
(2, 9, 2, 1, '2020-11-26', '09:00:00', 30, 2),
(2, 10, 3, 2, '2020-11-26', '09:30:00', 30, 2),
(2, 8, 4, 3, '2020-11-26', '08:00:00', 30, 2),
(2, 9, 5, 1, '2020-11-26', '09:00:00', 30, 2),
(2, 10, 6, 2, '2020-11-26', '09:30:00', 30, 2);
