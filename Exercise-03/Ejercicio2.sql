create user c##veterinario identified by veterinario;
grant all privileges to c##veterinario;
DISCONNECT
connect c##veterinario/veterinario;

create table perros(
codigo varchar(20),
nombre varchar(20),
raza varchar(20),
fecha_de_nacimiento date,
sexo varchar(20),
color varchar(20),
PRIMARY KEY (codigo)
);

INSERT INTO perros VALUES ('1', 'boby', 'fox terrier', '1-1-2001', 'macho', 'blanco');
INSERT INTO perros VALUES ('2', 'kai', 'border collie', '2-1-2001', 'macho', 'negro');
INSERT INTO perros VALUES ('3', 'enzo', 'boxer', '3-1-2001', 'macho', 'marron');
INSERT INTO perros VALUES ('4', 'thor', 'galgo', '4-1-2001', 'hembra', 'marron claro');
INSERT INTO perros VALUES ('5', 'pirata', 'braco alemán', '5-1-2001', 'macho', 'gris');
INSERT INTO perros VALUES ('6', 'laika', 'pastor alemán', '6-1-2001', 'hembra', 'azul');
INSERT INTO perros VALUES ('7', 'fito', 'manchester terrier', '7-1-2001', 'macho', 'rojo');
INSERT INTO perros VALUES ('8', 'sian', 'mastín', '8-1-2001', 'macho', 'amarillo');
INSERT INTO perros VALUES ('9', 'ansu', 'alabai', '9-1-2001', 'hembra', 'naranja');
INSERT INTO perros VALUES ('10', 'vini', 'husky', '10-1-2001', 'hembra', 'verde');
COMMIT;

select nombre, raza
from perros;

select nombre as nom, sexo as sex from perros;

select nombre, year(current_date) - year (fecha_de_nacimiento) as edad from perros;