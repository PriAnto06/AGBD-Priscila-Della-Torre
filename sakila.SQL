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

--Arreglar el 7
select count(film_id) from film f
inner join category c
on f.film_id = c.film_category

select count(category_id), c.name from category c
group by c.name 
--tema nuevo

INSERT INTO actor(actor_id,first_name,last_name,last_update)
values(201,"Priscila","Della Torre","2020-12-23 07:12:29")

UPDATE actor
set first_name = "Ana",last_name = "Porco"
where first_name = "Priscila"

delete from actor 
where actor_id = "201"



--select count(*),rating from film
--group by rating

--select avg(replacement_cost * 4)from film
