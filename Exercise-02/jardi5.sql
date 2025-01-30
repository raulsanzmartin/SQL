use jardineria

select clientes.nombrecliente as nombre_cliente, count(pedidos.codigopedido) as total_pedidos
from clientes
inner join pedidos on clientes.codigocliente = pedidos.codigocliente
group by clientes.codigocliente;

select clientes.nombrecliente as nombre_cliente, sum(pagos.cantidad) as pagos
from clientes, pagos where clientes.codigocliente = pagos.codigocliente
group by clientes.codigocliente;

select clientes.nombrecliente as nombre_cliente, sum(detallepedidos.cantidad*preciounidad) as pagos
from clientes, pedidos, detallepedidos where pedidos.codigopedido = detallepedidos.codigopedido and pedidos.codigocliente = clientes.codigocliente
group by clientes.codigocliente;

select distinct clientes.nombrecliente
from clientes, pedidos where clientes.codigocliente = pedidos.codigocliente and year(pedidos.fechapedido) = 2008;
