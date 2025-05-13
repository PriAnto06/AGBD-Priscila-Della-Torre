select f.title as titulo, a.address as dirrecion,c.city as ciudad,co.country as pais  
from film f
inner join inventory  i
on f.film_id = i.film_id
inner join store s 
on i.store_id = s.store_id
inner join address a 
on s.address_id = a.address_id
inner join city c 
on a.city_id = c.city_id
inner join country co 
on  c.country_id = co.country_id
--where date = title 

--actividad 2
select f.title as titulo, c.name as categoria,l.name as idioma,f.rating as rating,f.length  
from film f 
inner join inventory  i
on f.film_id = i.film_id
inner join category  c
on c.category_id = c.category_id
inner join language l
on l.language_id = l.language_id
WHERE f.length  between 60 and 120

--actividad 3
select st.first_name as nombre, st.last_name as apellido,a.address_id as direccion,c.city as ciudad, co.country as pais 
from staff st
INNER join store s
on s.store_id =s.store_id
inner join address a
on a.address_id = st.address_id 
inner join city c
on c.city_id = a.city_id
inner join country co
on c.country_id = co.country_id

--actividad 4
select f.title as Titulo ,min(return_date),max(return_date)
from film f
inner join inventory i
on f.film_id = i.film_id
inner join rental r
on i.inventory_id = r.inventory_id 

--actividad 5
SELECT 
    f.title AS pelicula,
    ft.description AS descripcion,
    l.name AS idioma,
    cat.name AS categoria,
    a.first_name , a.last_name AS actor,
    c.first_name, c.last_name AS cliente,
    ad.address, ci.city , co.country AS direccion_cliente,
    r.rental_date AS fecha_alquiler,
    r.return_date AS fecha_devolucion,
    p.amount AS monto_pago,
    st.store_id AS tienda,
    sf.first_name , sf.last_name AS empleado
FROM film f
LEFT JOIN language l ON f.language_id = l.language_id
LEFT JOIN film_text ft ON f.film_id = ft.film_id
LEFT JOIN film_actor fa ON f.film_id = fa.film_id
LEFT JOIN actor a ON fa.actor_id = a.actor_id
LEFT JOIN film_category fc ON f.film_id = fc.film_id
LEFT JOIN category cat ON fc.category_id = cat.category_id
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
LEFT JOIN customer c ON r.customer_id = c.customer_id
LEFT JOIN address ad ON c.address_id = ad.address_id
LEFT JOIN city ci ON ad.city_id = ci.city_id
LEFT JOIN country co ON ci.country_id = co.country_id
LEFT JOIN payment p ON r.rental_id = p.rental_id
LEFT JOIN staff sf ON r.staff_id = sf.staff_id
LEFT JOIN store st ON c.store_id = st.store_id

-- left join: devuelve devuelve todas las filas de la tabla de la izquierda (la primera tabla), y
--las filas coincidentes de la tabla de la derecha (la segunda tabla). Si no hay
--coincidencia, las columnas de la tabla de la derecha tendrán valores

--actividad 6
select count(*),rating from film
group by rating

--actividad 7

select c.name, count(f.film_id) from film f
inner join film_category fc 
on f.film_id = fc.film_id
inner join category c
on fc.category_id = c.category_id
group by c.name

--actividad 8

SELECT a.actor_id,a.first_name ,a.last_name AS full_name,
COUNT(fa.film_id) AS film_count
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id, full_name
ORDER BY film_count DESC
LIMIT 10;

--Actividad 9
SELECT a.address,c.city , co.country AS locacion,
COUNT(i.inventory_id) AS total_inventory
FROM inventory i
INNER JOIN store s ON i.store_id = s.store_id
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country co ON c.country_id = co.country_id
GROUP BY location
ORDER BY total_inventory;

--actividad 10

SELECT count(i.film_id),a.address,c.city,co.country
FROM store s
JOIN inventory i 
ON s.store_id = i.store_id
JOIN film f
ON i.film_id = f.film_id
JOIN address a
ON s.address_id = a.address_id
JOIN city c
ON a.city_id = c.city_id
JOIN country co 
ON c.country_id = co.country_id
GROUP BY s.store_id;

--actividad 11
select c.name, avg(rental_duration*rental_rate) 
from film f
INNER join film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c 
ON fc.category_id = c.category_id
GROUP BY c.name;

--actividad 12
SELECT min(re.return_date),max(re.return_date),(rental_duration*rental_rate)
FROM film f
INNER JOIN inventory i
ON f.film_id = i.film_id 
INNER JOIN rental re 
ON i.inventory_id = re.inventory_id
WHERE f.title = 'ALABAMA DEVIL'
ORDER by re.return_date;

--actividad 13
SELECT f.title as titulo, f.length as duracion, c.name as categoria
FROM film f
INNER join film_category fc
ON f.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
ORDER BY f.length;

--actividad 14
SELECT f.title as titulo,COUNT(fa.actor_id)
FROM film f
INNER join film_actor fa
ON f.film_id = fa.film_id
where f.title like "w%"
HAVING COUNT(fa.actor_id) >= 5;

--actividad 15
SELECT c.first_name,c.last_name, sum (p.amount) as pago
FROM customer c
INNER JOIN payment p 
on c.customer_id = p.customer_id
group by c.customer_id
order by pago;
--amount significa monto o cantidad de dinero.

--actividad 16
select f.title as nombre,f.length as duracion,a.first_name,a.last_name as actor
from film f
inner join film_actor fa
on f.film_id = f.film_id
inner join actor a
on fa.actor_id = a.actor_id
order by length;

--actividad 17
SELECT c.last_name AS Apellido, ci.city AS Ciudad,co.country AS Pais,a.address AS Direccion,r.rental_id AS Alquiler,p.amount AS Pago
FROM customer c
INNER JOIN address a 
ON c.address_id = a.address_id
INNER JOIN rental r 
ON c.customer_id = r.customer_id
INNER JOIN payment p 
ON r.rental_id = p.rental_id
INNER JOIN city ci
ON a.city_id = ci.city_id
INNER JOIN country co
ON ci.country_id = co.country_id
ORDER BY p.amount;

--actividad 18 

insert into actor (actor_id,first_name,last_name,last_update)
VALUES (201,'Priscila','Della Torre','2025-01-10')

--actividad 19
INSERT INTO actor (actor_id,first_name,last_name ,last_update)
VALUES (204, 'Heidy','Calderon','2025-01-15'),
(205, 'Ludmila','Rodriguez','2025-02-01')

--actividad 20
set first_name = "Lourdes" ,last_name = "Della Torre"
where first_name = "Heidy";

update actor 
set first_name = "Luna" ,last_name = "Celeste"
where first_name = "Ludmila";

update actor 
set first_name = "Solange" ,last_name = "Villegas"
where first_name = "Priscila"

--actividad 21

DELETE FROM Empleados
WHERE EmpleadoID = 3;











--tema nuevo

--inserta
INSERT INTO actor(actor_id,first_name,last_name,last_update)
values(201,"Priscila","Della Torre","2020-12-23 07:12:29")

--agrega
UPDATE actor
set first_name = "Ana",last_name = "Porco"
where first_name = "Priscila"

--elimina
delete from actor 
where actor_id = "201"


    
--select count(*),rating from film
--group by rating

--select avg(replacement_cost * 4)from film
