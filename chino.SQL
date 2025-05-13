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