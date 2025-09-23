--8. What are the busiest rental days of the week?


/*
Object:Understand customer rental patterns by weekday to optimize staffing and promotions.

Approach:Extract the weekday from rental_date in the rental table and count total rentals per day.

Assumptions :The system records rental dates accurately with no missing logs.
*/


SELECT TO_CHAR(r.rental_date, 'Day') AS "Weekday",
       COUNT(*) AS "Rental Count"
FROM rental r
GROUP BY TO_CHAR(r.rental_date, 'Day')
ORDER BY "Rental Count" DESC;


