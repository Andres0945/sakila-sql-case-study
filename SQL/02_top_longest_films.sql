--2. What are the top 10 longest films in the catalog?

/* 
Objective: To identify the movies with the longest runtimes in the catalog for further analysis.

Approach: Select the title and length from the film table, order the results in descending order by length, 
and limit the output to the top 10.

Assumptions: Movie durations are measured in minutes and stored in the length column.
*/

SELECT title AS "Title", length AS "Length"
FROM film
ORDER BY "Length" DESC
LIMIT 10;
