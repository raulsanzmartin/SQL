use nba

SELECT nombre,Nombre_equipo,peso*0.4535 as peso
FROM jugadores order by peso desc limit 10;

SELECT nombre,Nombre_equipo,peso*0.4535 as peso
FROM jugadores order by peso asc limit 3;

SELECT nombre,Nombre_equipo,(left(Altura,1)*0.3048)+(substr(Altura,3,2)*0.0254) as metros
FROM jugadores order by metros desc limit 5;

SELECT nombre,Nombre_equipo,left(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254 as metros
FROM jugadores order by metros asc limit 5;