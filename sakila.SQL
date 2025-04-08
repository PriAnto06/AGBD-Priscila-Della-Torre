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


--select count(*),rating from film
--group by rating
--select avg(replacement_cost * 4)from film
