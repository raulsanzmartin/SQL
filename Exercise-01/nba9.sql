set serveroutput on
set verify off


DECLARE
Nom_Equipo varchar(20):='Hola';
contador INTEGER :=0;
CURSOR cursorJugador is Select DISTINCT jugadores.Nombre_Equipo,equipos.Nombre,Pies_Metros(jugadores.Altura) as AlturaMetros from equipos,jugadores where equipos.Nombre=jugadores.Nombre_equipo and Conferencia='West' order by 1,3 desc ;
regJugador cursorJugador%ROWTYPE;

BEGIN	
	open cursorJugador;	
	LOOP
		fetch cursorJugador into regJugador;
		exit when cursorJugador%NOTFOUND;
	if regJugador.Nombre_Equipo != Nom_Equipo THEN
		Nom_Equipo:= regJugador.Nombre_Equipo;
		DBMS_OUTPUT.PUT_LINE(Nom_Equipo);
		contador:=0;
	
	end if;
	if contador < 3 THEN
		DBMS_OUTPUT.PUT_LINE(chr(9)||rpad(regJugador.Nombre,30)||rpad(regJugador.AlturaMetros,40));
		contador:=contador+1;
	end if;
	end loop;
	close cursorJugador;
	end;
	/


