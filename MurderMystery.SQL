SELECT * FROM crime_scene_report
where date = 20180115 AND type = 'murder' AND city = 'SQL City'
/*Las imágenes de seguridad muestran que había dos testigos.
 El primero vive en la última casa de Northwestern Dr.
  El segundo, llamado Annabel, vive en algún lugar de Franklin Ave.*/

-----------------------------------------------------------------------------
select id, age 
from drivers_license
/* me muestra una lista de id y de edades*/

select* from  facebook_event_checkin
/* me muestra la id de la persona, la id del evento, el nombre del evento y la fecha*/

select date, type 
from crime_scene_report
where type = 'murder' ;/* para mostrarme una condicion especifica */
/* me muestra una lista de fecha y tipo */ 

select name, id 
from person
where address_number and license_id;
/* me muestra una lista de nombre y de id */ 







