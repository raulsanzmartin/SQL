select nombre, nombre_equipo, peso*0.4535 as peso from jugadores order by peso desc fetch first row only; --forma 1--
select * from(select nombre, nombre_equipo, peso*0.4535 as peso from jugadores order by peso desc) where rownum = 1; --forma 2--

select nombre, nombre_equipo, peso*0.4535 as peso from jugadores order by peso asc fetch first row only; --forma 1--
select * from(select nombre, nombre_equipo, peso*0.4535 as peso from jugadores order by peso asc) where rownum = 1; --forma 2--

select * from(select nombre, nombre_equipo, LPAD(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254 as metros
from jugadores order by metros desc) where rownum = 1;

select * from(select nombre, nombre_equipo, LPAD(ltrim(Altura),1)*0.3048+substr(ltrim(rtrim(Altura)),3,2)*0.0254 as metros
from jugadores order by metros asc) where rownum = 1;

select * from (select nombre_equipo,sum(peso)*0.4535 as peso from jugadores group by nombre_equipo
order by peso desc) where rownum = 1;

select * from (select nombre_equipo,sum(peso)*0.4535 as peso from jugadores group by nombre_equipo
order by peso asc) where rownum = 1;