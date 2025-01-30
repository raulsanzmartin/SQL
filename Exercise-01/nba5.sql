use nba

create or replace view jug_sin_proc as
select Nombre,nombre_equipo,procedencia,altura from jugadores where procedencia is null;

create or replace view jug_polif as
select nombre,posicion,nombre_equipo from jugadores where posicion like '__%';

create or replace view jug_poker as 
select jugadores.nombre, temporada from jugadores,estadisticas where puntos_por_partido >= 10 and rebotes_por_partido >= 10 and asistencias_por_partido >= 10 and tapones_por_partido >= 10 and jugadores.codigo=estadisticas.jugador;