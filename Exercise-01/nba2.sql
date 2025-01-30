use nba

SELECT nombre,Nombre_equipo,procedencia
FROM jugadores WHERE Procedencia IS null;

SELECT nombre,Nombre_equipo,procedencia
FROM jugadores WHERE Procedencia IS NOT null;

SELECT DISTINCT procedencia from jugadores;

SELECT * FROM equipos where nombre like
'R_____S';

SELECT * FROM equipos where Nombre like
'_o%';

SELECT nombre,Nombre_equipo,procedencia 
FROM jugadores where procedencia like '%Texas%';

SELECT nombre,Nombre_equipo,Posicion
FROM jugadores where Posicion like '__%';
