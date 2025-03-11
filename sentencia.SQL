select * from inhabitant
select * from inhabitant where state = 'friendly'
select * from inhabitant where state = 'friendly'and job = 'weaponsmith'
select * from inhabitant where state = 'friendly'and job like  '%smith'
select personid from inhabitant where name  = 'Stranger'
select gold from inhabitant where name  = 'Stranger'
select * from item Where owner is null
update item set owner =20 where owner is null
select * from item where owner = 20 
select * from inhabitant where state  =  'friendly' and job ='dealer' or job = 'merchant'
