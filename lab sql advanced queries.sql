#List each pair of actors that have worked together.
use sakila;
select f.film_id, ft1.actor_id, ft2.actor_id, concat(t1.first_name, t1.last_name), concat(t2.first_name, t2.last_name)
from film f
    inner join film_actor ft1
    on f.film_id=ft1.film_id
    
    inner join actor t1
    on ft1.actor_id=t1.actor_id
    
    inner join film_actor ft2
    on f.film_id=ft2.film_id
    
    inner join actor t2
    on ft2.actor_id=t2.actor_id; 
    
#For each film, list actor that has acted in more films.
SELECT count(film_actor.actor_id), actor.first_name, actor.last_name 
FROM actor 
INNER JOIN film_actor 
ON actor.actor_id = film_actor.actor_id
GROUP BY film_actor.actor_id ;

