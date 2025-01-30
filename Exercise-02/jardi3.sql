use jardineria

select nombrecliente from clientes where limitecredito=(select max(limitecredito) from clientes);

select nombre, apellido1, puesto from empleados where not EXISTS (select codigoempleadorepventas from clientes where empleados.codigoempleado=clientes.codigoempleadorepventas);

select nombre, precioventa from productos where precioventa = (select max(precioventa) from productos);

select nombre from productos where codigoproducto = (select codigoproducto from detallepedidos where cantidad = (select max(cantidad) from detallepedidos));

select nombrecliente from clientes where limitecredito > (select sum(cantidad) from pagos where pagos.codigocliente = clientes.codigocliente group by codigocliente);

select nombre,cantidadenstock from productos where cantidadenstock = (select max(cantidadenstock) from productos) or cantidadenstock = (select min(cantidadenstock) from productos);