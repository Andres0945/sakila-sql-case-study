--7. Which actors have generated the most revenue through their films?

/*
Objective:Identify which actors contribute most to company revenue, helping with marketing and promotion strategies.

Approach:Join actor, film_actor, inventory, rental, and payment tables. 
Aggregate payments by actor name and rank results in descending order.

Assumptions:Each payment can be directly linked back to an actor through film appearances.
Revenue is attributed equally to all actors in a film (no weighting for leading roles).
*/


SELECT a.first_name || ' ' || a.last_name AS "Actor Name",
       SUM(p.amount) AS "Total Revenue"
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN inventory i ON fa.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY "Actor Name"
ORDER BY "Total Revenue" DESC
LIMIT 10;



