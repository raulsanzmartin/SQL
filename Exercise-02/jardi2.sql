create user c##jardinero identified by jardinero
grant create table, create session, unlimited tablespace to c##jardinero;

select codigooficina, ciudad from oficinas;

select count(codigoempleado) as numero_empleados from empleados;

select count(codigocliente) as numero_clientes, pais from clientes group by pais;

select avg(cantidad) as pagos from pagos where fechapago like '2007%';

select upper(estado) as estado, count(*) as numero_pedidos from pedidos group by upper(estado) order by count(*) desc;

select MAX(precioventa) as precio_maximo, MIN(precioventa) as precio_minimo from productos; 