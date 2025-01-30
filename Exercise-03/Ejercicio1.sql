create table perros(
codigo integer auto_increment primary key,
nombre varchar(20),
raza varchar(20),
fecha_de_nacimiento datetime,
sexo varchar(20),
color varchar(20)
);

insert into perros (codigo, nombre, raza, fecha_de_nacimiento, sexo, color) VALUES
('1', 'boby', 'fox terrier', '2001-1-1', 'macho', 'blanco'),
('2', 'kai', 'border collie', '2001-2-1', 'macho', 'negro'),
('3', 'enzo', 'boxer', '2001-3-1', 'macho', 'marron'),
('4', 'thor', 'galgo', '2001-4-1', 'hembra', 'marron claro'),
('5', 'pirata', 'braco alemán', '2001-5-1', 'macho', 'gris'),
('6', 'laika', 'pastor alemán', '2001-6-1', 'hembra', 'azul'),
('7', 'fito', 'manchester terrier', '2001-7-1', 'macho', 'rojo'),
('8', 'sian', 'mastín', '2001-8-1', 'macho', 'amarillo'),
('9', 'ansu', 'alabai', '2001-9-1', 'hembra', 'naranja'),
('10', 'vini', 'husky', '2001-10-1', 'hembra', 'verde')
;

select nombre, raza
from perros;

select nombre as nom, sexo as sex from perros;

select nombre, year(current_date) - year (fecha_de_nacimiento) as edad from perros;