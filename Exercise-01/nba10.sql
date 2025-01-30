set serveroutput on;
set verify off;
--EJ 1--
declare
	cursor jugadoreslakers is
		select * from jugadores where nombre_equipo='Lakers';
	regjugador jugadoreslakers%rowtype;
begin
	open jugadoreslakers;
	loop
		fetch jugadoreslakers into regjugador;
		exit when jugadoreslakers%notfound;
	dbms_output.put_line('jugador ' || regjugador.nombre);
	end loop;
	close jugadoreslakers;
end;
/

--EJ 2--
declare
	cursor jugadoreslakers2 is
		select nombre, procedencia, posicion from jugadores where nombre_equipo='Lakers';
	nombre jugadores.nombre%type;
	procedencia jugadores.procedencia%type;
	posicion jugadores.posicion%type;
begin
	open jugadoreslakers2;
	loop
		fetch jugadoreslakers2 into nombre, procedencia, posicion;
		exit when jugadoreslakers2%notfound;
	dbms_output.put_line('nombre ' || nombre || ' procedencia ' || procedencia || ' posicion ' || posicion);
	end loop;
	close jugadoreslakers2;
end;
/

--EJ 3--
declare
	cursor jugadoreslakers3 is
		select nombre, procedencia, posicion from jugadores where nombre_equipo='Lakers';
	nombre jugadores.nombre%type;
	procedencia jugadores.procedencia%type;
	posicion jugadores.posicion%type;
begin
	dbms_output.put_line('JUGADORES DE LOS LAKERS');
	dbms_output.put_line('----------------------------------------------------------------');
	dbms_output.put_line('| Nombre              | Procedencia             | Posicion   |');
	dbms_output.put_line('----------------------------------------------------------------');
	open jugadoreslakers2;-+
	loop
		fetch jugadoreslakers3 into nombre, procedencia, posicion;
		exit when jugadoreslakers3%notfound;
	dbms_output.put_line(rpad(nombre, 23)|| rpad(procedencia, 27)|| rpad(posicion, 25));
	end loop;
	close jugadoreslakers3;
end;
/

--EJ 4--
create or replace function Pies_Metros(altura varchar2) return number is
  pies number;
  pulgadas number;
begin
  pies := to_number(REGEXP_SUBSTR(altura, '^\d+'));
  pulgadas := to_number(REGEXP_SUBSTR(altura, '\d+$'));
  
  return round((pies * 0.3048) + (pulgadas * 0.0254), 2);
end;
/

create or replace function Libras_Kilos(peso number) return number is
begin
  return round(peso * 0.4536);
end;
/

declare
  cursor JugadoresLakers4 is
    select nombre, Libras_Kilos(Peso) as Kilos, Pies_Metros(Altura) as Metros
    from jugadores
    where nombre_equipo = 'Lakers';
	Nombre Jugadores.Nombre%type;
	Kilos Jugadores.Peso%type;
	Metros number;
begin
  dbms_output.put_line('JUGADORES DE LOS LAKERS');
  dbms_output.put_line('----------------------------------------');
  dbms_output.put_line('| Nombre     | Kilos     | Metros     |');
  dbms_output.put_line('----------------------------------------');
  
  open JugadoresLakers4;
  loop
    fetch JugadoresLakers4 into Nombre, Kilos, Metros;
    exit when JugadoresLakers4%NOTFOUND;
    
    dbms_output.put_line('| ' || rpad(Nombre, 11) || ' | ' || rpad(Kilos, 10) || ' | ' || rpad(Metros, 10) || ' |');
  end loop;
  
  dbms_output.put_line('----------------------------------------');
  close JugadoresLakers4;
end;
/

--EJ 5--
create or replace function Posicion_Detalle(posicion varchar2) return varchar2 is
begin
  if posicion in ('G', 'PG', '1') then
    return 'Base';
  elsif posicion in ('G-F', 'SG', '2') then
    return 'Escolta';
  elsif posicion in ('F', 'SF', '3') then
    return 'Alero';
  elsif posicion in ('F-C', 'PF', '4') then
    return 'Ala-pívot';
  elsif posicion in ('C', '5') then
    return 'Pívot';
  else
    return posicion;
  end if;
end;
/

declare
  cursor JugadoresLakers5 is
    select Nombre, Posicion_Detalle(Posicion) as Posicion, Pies_Metros(Altura) as Metros
    from Jugadores
    where nombre_equipo = 'Lakers';
  
  Nombre Jugadores.Nombre%type;
  Posicion varchar2(20);
  Metros number;
begin
  dbms_output.put_line('JUGADORES DE LOS LAKERS');
  dbms_output.put_line('----------------------------------------');
  dbms_output.put_line('| Nombre     | Posición     | Metros     |');
  dbms_output.put_line('----------------------------------------');
  
  open JugadoresLakers5;
  loop
    fetch JugadoresLakers5 into Nombre, Posicion, Metros;
    exit when JugadoresLakers5%NOTFOUND;
    
    dbms_output.put_line('| ' || rpad(Nombre, 11) || ' | ' || rpad(Posicion, 13) || ' | ' || rpad(Metros, 10) || ' |');
  end loop;
  
  dbms_output.put_line('----------------------------------------');
  close JugadoresLakers5;
end;
/

--EJ 6--
declare
   cursor jugadoreslakers6 is
      select Nombre, Posicion, Altura
      from Jugadores
      where nombre_equipo = 'Lakers' and Altura > (select avg(Altura) from Jugadores where nombre_equipo = 'Lakers');
   
   jugador jugadoreslakers6%rowtype;
   mediaAltura number;
begin
   select avg(Altura)
   into mediaAltura
   from Jugadores
   where nombre_equipo = 'Lakers';
   
   dbms_output.put_line('La estatura media de los Lakers es: ' || mediaAltura || ' metros');
   dbms_output.put_line('JUGADORES CON ESTATURA POR ENCIMA DE LA MEDIA:');
   dbms_output.put_line('Nombre   | Posicion  | Altura');
   dbms_output.put_line('---------------------------');
   
   open jugadoreslakers6;
   
   loop
      fetch jugadoreslakers6 into jugador;
      exit when jugadoreslakers6%NOTFOUND;
      
      dbms_output.put_line(jugador.Nombre || ' | ' || Posicion_Detalle(jugador.Posicion) || ' | ' || jugador.Altura);
   end loop;
   
   close jugadoreslakers6;
end;
/

--EJ 7--
declare
Nom_Equipo varchar(20):='Hola';
contador integer :=0;
cursor jugadoreslakers7 is Select distinct jugadores.Nombre_Equipo,equipos.Nombre,Pies_Metros(jugadores.Altura) as AlturaMetros from equipos,jugadores where equipos.Nombre=jugadores.Nombre_equipo and Conferencia='West' order by 1,3 desc ;
regJugador jugadoreslakers7%rowtype;

begin	
open jugadoreslakers7;	
	LOOP
	fetch jugadoreslakers7 into regJugador;
	exit when jugadoreslakers7%NOTFOUND;
if regJugador.Nombre_Equipo != Nom_Equipo then
	Nom_Equipo:= regJugador.Nombre_Equipo;
	DBMS_OUTPUT.PUT_LINE(Nom_Equipo);
	contador:=0;
	
end if;
if contador < 3 then
	DBMS_OUTPUT.PUT_LINE(chr(9)||rpad(regJugador.Nombre,30)||rpad(regJugador.AlturaMetros,40));
	contador:=contador+1;
end if;
end loop;
close jugadoreslakers7;
end;
/

