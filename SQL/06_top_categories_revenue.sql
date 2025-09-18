--6. What are the top 3 categories by revenue?

/*
Objective: To determine the most profitable movie categories. 
This can inform decisions about investing in new inventory or marketing campaigns.

Approach: Join multiple tables (category, film_category, film, inventory, rental, and payment) 
to link category names with the revenue generated. Sum the payment amounts for each category and order the results.

Assumptions: The sum of the amount field represents the total revenue per category.
*/

SELECT c.name AS "Category",
       SUM(p.amount) AS "Total revenue"
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON f.film_id = fc.film_id
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON r.inventory_id = i.inventory_id
JOIN payment p ON p.rental_id = r.rental_id
GROUP BY c.name
ORDER BY "Total revenue" DESC
LIMIT 3;

