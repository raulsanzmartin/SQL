use nba

select AVG(peso*0.4535) as peso, AVG(left(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254) as altura
from jugadores where nombre_equipo='Lakers';

SELECT nombre_equipo, COUNT(*) as numero_jugadores from jugadores group by nombre_equipo;

SELECT procedencia, COUNT(*) as numero_jugadores from jugadores group by procedencia;

select nombre, MAX(left(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254) as altura, nombre_equipo
from jugadores group by nombre_equipo;

SELECT conferencia, COUNT(nombre) as numero_equipo FROM equipos group by conferencia;

select nombre_equipo, COUNT(nombre) as numero_jugadores 
from jugadores where (peso*0.4535)<90 group by nombre_equipo having count(nombre)>3;