--4. What is the monthly revenue trend in 2007?

/*
Objective: To analyze revenue behavior throughout the year 2007 to identify seasonal trends or sales peaks.

Approach: Sum the amount column from the payment table, group the results by month, 
and filter only for records corresponding to the year 2007.

Assumptions: All payments are found in the payment table. 
The payment_date field is the single source for determining the month and year of the transaction.
*/

SELECT EXTRACT(MONTH FROM payment_date) AS "Month",
       SUM(amount) AS "Monthly Revenue"
FROM payment
WHERE EXTRACT(YEAR FROM payment_date) = 2007
GROUP BY "Month"
ORDER BY "Month";

