--5. Which films have never been rented?

/*
Objective: To identify titles in the catalog with low or no demand to make decisions about their promotion or discontinuation.

Approach: Join the film, inventory, and rental tables using a LEFT JOIN. 
Filter the results to find records where there is no associated rental.

Assumptions: The rental_id is a unique identifier for each rental. 
It's assumed that all available movies in the inventory are in the inventory table.
*/

SELECT f.film_id, f.title
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
WHERE r.rental_id IS NULL
GROUP BY f.film_id, f.title
ORDER BY f.title;


