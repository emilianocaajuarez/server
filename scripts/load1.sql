/* SE CARGAN ROL, DIRECCION, USUARIO, ESTADOS */

INSERT INTO rol (idRol, descripcion)
VALUES 
(1, 'comerciante'),
(2, 'cliente');

INSERT INTO usuario (idRol, nombre, apellido, dni, edad, telefono, mail)
VALUES
(1, 'Igor', 'Wuntz', 12548652, 47, 3515896663, 'wigor@gmail.com'),
(2, 'Martin', 'Peralta', 35215547, 35, 3512458712, 'tincho@hotmail.com'),
(1, 'Romina', 'Lopez', 32569001, 39, 3536584129, 'laro@gmail.com'),
(1, 'Ludmila', 'Sanchez', 36256984, 29, 3568522179, 'ludmilalomas@outlook.com'),
(1, 'Rogelio', 'Buendia', 25632487, 41, 3584514259, 'elroge@gmail.com'),
(1, 'Margarita', 'Perez', 22586325, 43, 3524695123, 'perezmarga@gmail.com'),
(1, 'Lucila', 'Leguizamon', 25658412, 35, 3521658954, 'luci_admin@gmail.com'),
(2, 'Luis', 'Fernandez', 18526354, 52, 3518966325, 'elluis@gmail.com'),
(2, 'Alberta', 'Martinez', 37558954, 26, 3596528741, 'martinez_al@gmail.com'),
(2, 'Monica', 'Gutierrez', 35254789, 29, 355652145, 'Moni_gu@gmail.com');





/*  DIRECCION
    1-clarkes
    2-patiecito bar
    6-pinton bar
*/
INSERT INTO direccion (calle, numero, departamento, idUsuario, ciudad, provincia, pais)
VALUES
('Santiago Derqui', 225, 'PB', 1, 'Córdoba', 'Córdoba', 'Argentina'),
('Bv. Chacabuco', 651, '5A', 2,'Córdoba', 'Córdoba', 'Argentina'),
('Rondeau', 120, 'PB', 3, 'Córdoba', 'Córdoba', 'Argentina'),
('Fructuoso Rivera', 525, 'PB', 4, 'Córdoba', 'Córdoba', 'Argentina'),
('Bv. San Juan', 60, 'PB', 5, 'Córdoba', 'Córdoba', 'Argentina'),
('San Martin', 52, 'PB', 6, 'Córdoba', 'Córdoba', 'Argentina'),
('Ituzaingo', 1120, 'PB', 7, 'Córdoba', 'Córdoba', 'Argentina'),
('Independencia', 630, '12A', 8, 'Córdoba', 'Córdoba', 'Argentina'),
('Bv Illia', 150, '8E', 9, 'Córdoba', 'Córdoba', 'Argentina'),
('Obispo Oro', 320, '6F', 10, 'Córdoba', 'Córdoba', 'Argentina');







INSERT INTO perfilcomercial (idUsuario, nombre, tipo, telefono, mail, logoURL, bannerURL)
VALUES

(1, 'Mildred Travel', 'viajes', 3526589654, 'mildredtravel@hotmail.com', 'https://i.ibb.co/LtjTmw4/logotravel.jpg', null),
(3, 'Moderno Muebles', 'muebles', 3535489521, 'moderno.info@hotmail.com', 'https://i.ibb.co/b2c8xKY/logomoderno.jpg', null),
(4, 'Rubí MS', 'medicina', 3512587456, 'rubiservices@gmail.com', 'https://i.ibb.co/85dXpK8/logorubi.jpg', null),
(5, 'Pastelería Corona', 'pasteleria', 3512589547, 'corona_pasteleria@hotmail.com', 'https://i.ibb.co/Z6G7PLk/logocorona.jpg', null),
(6, 'Berna', 'bar, cocteles', 3536552014, 'berna_cocteles@hotmail.com', 'https://i.ibb.co/J7Zq3Rf/logoberna.jpg', null),
(7, 'Cuatro Caminos', 'automovilismo', 3587456321, 'cuatrocaminos@gmail.com', 'https://i.ibb.co/D1nGnkf/logocuatrocaminos.jpg', null);






INSERT INTO estadoturno (descripcion)
VALUES
('Pendiente'),
('Confirmado'),
('Cancelado');

https://ibb.co/4Tk21Z6 /*berna*/
https://ibb.co/27WHQnf /*pasteleria*/
https://ibb.co/9pjwj2H /*cuatrocaminos*/
https://ibb.co/9VQCJrB /*moderno*/
https://ibb.co/J7yC4Bk /*rubi*/
https://ibb.co/J76YVLX /*mildred*/

<a href="https://imgbb.com/"><img src="https://i.ibb.co/J7Zq3Rf/logoberna.jpg" alt="logoberna" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/Z6G7PLk/logocorona.jpg" alt="logocorona" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/D1nGnkf/logocuatrocaminos.jpg" alt="logocuatrocaminos" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/b2c8xKY/logomoderno.jpg" alt="logomoderno" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/85dXpK8/logorubi.jpg" alt="logorubi" border="0"></a>
<a href="https://imgbb.com/"><img src="https://i.ibb.co/LtjTmw4/logotravel.jpg" alt="logotravel" border="0"></a>