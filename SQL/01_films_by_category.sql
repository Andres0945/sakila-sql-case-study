--1. How many films exist per category?

/*
Objective: To identify the distribution of the movie catalog.

Approach: Join the category, film_category, and film tables to link each movie to its category, 
then count the number of movies per category.

Assumptions: The film_category table is the sole source of information for assigning categories to movies. 
It's assumed that no movies exist without a category.
*/

SELECT c.name AS "Category", COUNT(f.film_id) AS "Films count"
FROM category c
JOIN film_category fc ON c.category_id = fc.category_id
JOIN film f ON f.film_id = fc.film_id
GROUP BY c.name
ORDER BY "Films count" DESC;

