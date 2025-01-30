SELECT Nombre FROM jugadores WHERE
Nombre_equipo='Lakers';

SELECT codigo,Nombre,Altura
FROM jugadores WHERE Nombre_equipo='Lakers'
and Procedencia='Spain'
;

SELECT Nombre, Altura,Procedencia FROM
jugadores WHERE Nombre_equipo='Lakers'AND
(Procedencia='Spain' OR
Procedencia='Slovenia');

SELECT Nombre, Altura, Procedencia
FROM jugadores
WHERE Nombre_equipo='Lakers' AND
Procedencia IN
('Spain','Slovenia','Serbia Montenegro');

SELECT Nombre,Nombre_equipo,Peso FROM
jugadores
WHERE Peso BETWEEN 270 AND 300;

SELECT Nombre,Nombre_equipo,Peso*0.4535 as Peso FROM
jugadores
WHERE Peso*0.4535 BETWEEN 120 AND 150;