use jardineria

select codigooficina, ciudad from oficinas;

select count(codigoempleado) as 'numero de empleados' from empleados;

select count(codigocliente), pais from clientes group by pais;

select avg(cantidad) as 'pago medio' from pagos where year(fechapago) like '2007'; 

select count(*) as numero_pedidos, estado from pedidos group by estado order by codigopedido desc;

select MAX(precioventa) as producto_mas_caro, MIN(precioventa) as producto_mas_barato from productos; 