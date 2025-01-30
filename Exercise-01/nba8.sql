use nba

select nombre, nombre_equipo, altura from jug_sin_proc order by altura asc limit 1;

select count(*) as jugadores,nombre_equipo from jugadores group by nombre_equipo;

select count(*) as puntos, nombre from jug_poker group by nombre;