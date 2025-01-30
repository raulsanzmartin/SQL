use nba

select nombre, nombre_equipo, peso*0.4535 as peso from jugadores order by peso desc limit 1;

select nombre, nombre_equipo, peso*0.4535 as peso from jugadores order by peso asc limit 1;

select nombre, nombre_equipo, left(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254 as metros
from jugadores order by altura desc limit 1;

SELECT nombre,Nombre_equipo,left(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254 as metros
FROM jugadores order by metros asc limit 1;

select nombre_equipo,sum(peso)*0.4535 as peso from jugadores group by nombre_equipo
order by peso desc limit 1;

select nombre_equipo,sum(peso)*0.4535 as peso from jugadores group by nombre_equipo
order by peso asc limit 1;