--actividad 1
select LastName,FirstName
FROM employees
ORDER by LastName ASC, FirstName ASC;

--actividad 2
select t.Name,t.Milliseconds
from tracks t
INNER join albums a 
on t.AlbumId = a.AlbumId 
where a.title = "Big Ones"
order by Milliseconds DESC;

--actividad 3
SELECT count(t.TrackId), g.Name
from genres g
INNER join tracks t
on g.GenreId = t.GenreId
group by g.GenreId

--actividad 4
SELECT a.Title AS Album_Nombre,COUNT(t.TrackId) AS musica
FROM albums a
INNER JOIN tracks t 
ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
HAVING COUNT(t.TrackId) >= 5
ORDER BY musica;

--actividad 5 
SELECT a.Title AS "Album Nombre", sum(t.UnitPrice) As PrecioTotal
FROM albums a
INNER JOIN tracks t
ON a.AlbumId = t.AlbumId
GROUP BY a.AlbumId
ORDER BY PrecioTotal
LIMIT 10 ; 

 --actividad 6
SELECT t.Name AS Nombre,g.name AS GeneroNombre,a.Title AS "Nombre de Album"
FROM tracks t
INNER JOIN genres g
ON t.GenreId = g.GenreId
INNER JOIN albums a
ON t.AlbumId = a.AlbumId 
WHERE t.UnitPrice = 0.99;

--actividad 7
SELECT t.Name AS Nombre,t.Milliseconds AS Duracion,t.name AS Titulo,a.Name AS "Nombre del artista"
FROM tracks t
INNER JOIN albums al
ON t.AlbumId = al.AlbumId
INNER JOIN artists a
ON al.ArtistId = a.ArtistId
ORDER BY t.Milliseconds 
LIMIT 20;

--actividad 8
SELECT  e.LastName AS Empleado_Apellido,e.Title AS Puesto,ls.LastName AS Jefe_Apellido,COUNT(c.CustomerId) AS Cantidad_Clientes
FROM employees e
LEFT JOIN employees ls
ON e.ReportsTo = ls.EmployeeId
LEFT JOIN customers c 
ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId, e.LastName, e.Title, ls.LastName
ORDER BY Cantidad_Clientes;
--El LEFT JOIN devuelve todas las filas de la tabla de la izquierda (la primera tabla), y
--las filas coincidentes de la tabla de la derecha (la segunda tabla).

--actividad 9
INSERT INTO tracks (name,Composer,MediaTypeId,Milliseconds,UnitPrice)
VALUES ('Disciplina', 'Lali', 2,2000,30000)
('Polanco', 'Ruggero', 2,1000,20000),
('pink Venom', 'BlackPink',2,1000,10000),
('Flower', 'Jisoo', 2,3000,20000); 

--actividad 10
 SELECT * FROM tracks
ORDER BY TrackId DESC
LIMIT 4;

--actividad 11
UPDATE tracks
SET name = 'BZRP Music Sessions #53',
    Composer = 'Shakira & Bizarrap',
    Milliseconds = 8000,
    UnitPrice = 50000
WHERE name = 'Polanco';

UPDATE tracks
SET name = 'Mienteme',
    Composer = 'Maria Becerra',
    Milliseconds = 9000,
    UnitPrice = 60000
WHERE name = 'Flower';

--actividad 12
SELECT * FROM tracks
ORDER BY TrackId DESC
LIMIT 2;

--actividad 13
DELETE FROM tracks
WHERE TrackId in  (3535,3536);
