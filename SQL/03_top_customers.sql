--3. Who are the top 10 customers by total spending?

/*
Objective: To identify the top 10 customers who have contributed the most to total revenue, 
for use in loyalty and reward strategies.

Approach: Join the customer and payment tables, sum the payment amounts per customer, 
count the number of payments, and order in descending order.

Assumptions: The payment table contains all transaction records. 
The sum of the amount field represents the total revenue from each customer.
*/

SELECT c.customer_id, c.first_name, c.last_name,
       SUM(p.amount) AS "Total spent", COUNT(p.payment_id) AS "Payments Count"
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY "Total spent" DESC
LIMIT 10;
