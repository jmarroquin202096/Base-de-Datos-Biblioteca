USE dbJorge;

SELECT pais FROM Proveedores;

SELECT pais FROM Clientes;

SELECT pais FROM Clientes
WHERE pais IN (SELECT pais FROM Proveedores);

SELECT DISTINCT pais FROM Clientes; 

SELECT MIN(precio)  AS 'Precio mas Pequeño' FROM Productos;

SELECT MAX(precio) AS 'Precio mas Alto' FROM Productos;

SELECT COUNT(idProducto) FROM Productos;

SELECT AVG(Precio) FROM Productos;

SELECT SUM(Cantidad) FROM detallesdelpedido;

SELECT 
FROM
WHERE
GROUP BY
HAVING
ORDER BY