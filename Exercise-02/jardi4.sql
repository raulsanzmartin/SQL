use jardineria

select clientes.nombrecliente, empleados.nombre, oficinas.ciudad 
from clientes, empleados, oficinas 
where clientes.codigoempleadorepventas=empleados.codigoempleado and empleados.codigooficina=oficinas.codigooficina;

select clientes.nombrecliente, empleados.nombre, oficinas.ciudad 
from clientes, empleados, oficinas 
where clientes.codigoempleadorepventas=empleados.codigoempleado and empleados.codigooficina=oficinas.codigooficina and clientes.codigocliente not in (select codigocliente from pagos);

select distinct empleados.Nombre as 'Nombre de Empleados', NombreJefe.Nombre as 'Nombre de jefe'from empleados,empleados as NombreJefe where empleados.CodigoEmpleado=NombreJefe.CodigoJefe;

select distinct clientes.NombreCliente from clientes,pedidos where pedidos.FechaEntrega>pedidos.FechaEsperada;