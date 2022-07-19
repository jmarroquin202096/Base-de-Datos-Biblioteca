USE Biblioteca;

SELECT S.NombreCompleto, P.idSocio, COUNT(P.idSocio) AS numeroPrestamo 
FROM Prestamo AS P, Socio AS S
WHERE P.idSocio = S.idSocio
GROUP BY idSocio
ORDER BY numeroPrestamo DESC
LIMIT 0,1;

SELECT S.NombreCompleto, P.idSocio, COUNT(P.idSocio) AS numeroPrestamo 
FROM Prestamo AS P, Socio AS S
WHERE P.idSocio = S.idSocio
GROUP BY idSocio
ORDER BY numeroPrestamo
LIMIT 0,1;

SELECT S.NombreCompleto
FROM Socio AS S
WHERE idSocio NOT IN (SELECT idSocio FROM Prestamo);

SELECT L.Titulo
FROM Libro AS L
WHERE idLibro NOT IN (SELECT idLibro FROM Prestamo);

SELECT L.idLibro, L.ISBN, L.Titulo
FROM Libro AS L
WHERE idLibro NOT IN (SELECT idLibro FROM Prestamo);

SELECT L.idLibro, L.ISBN, L.Titulo, numeroEjemplares
FROM Libro AS L
WHERE numeroEjemplares = (SELECT MAX(numeroEjemplares) FROM Libro);

SELECT L.idLibro, L.ISBN, L.Titulo, numeroEjemplares
FROM Libro AS L
WHERE numeroEjemplares = (SELECT MAX(99) FROM Libro);

SELECT L.idLibro, L.ISBN, L.Titulo, numeroEjemplares
FROM Libro AS L
WHERE numeroEjemplares = (SELECT MIN(numeroEjemplares) FROM Libro);

SELECT L.idLibro, L.ISBN, L.Titulo, numeroEjemplares
FROM Libro AS L
WHERE numeroEjemplares = (SELECT MIN(1) FROM Libro);

SELECT L.idLibro, L.ISBN, L.Titulo, numeroEjemplares
FROM Libro AS L
WHERE numeroEjemplares = (SELECT MAX(numeroEjemplares) FROM Libro);

SELECT L.idTema, T.nombreTema, SUM(numeroEjemplares) AS 'Total Tema'
FROM Libro AS L, Tema AS T 
WHERE L.idTema = T.idTema
GROUP BY idTema;

SELECT*FROM Libro WHERE titulo LIKE '%Funademntos%'