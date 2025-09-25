📄 README.md – Sakila DVD Rental SQL Case Study

🎯 Project Overview

This project analyzes the Sakila DVD Rental Database, a sample database simulating a movie rental business.
The goal is to practice SQL while answering key business questions that would help managers make data-driven decisions. It also includes a Power BI project where the SQL database was loaded, cleaned, and enhanced with new measures and calculated columns. This allowed us to build proper visualizations that provide a clearer and more insightful view of the key business questions under analysis.

The analysis includes:

- SQL queries to answer realistic business questions.
- CSV exports with query results.
- Power BI visualizations of selected insights.
- Business conclusions and recommendations.



📊 Dataset – Sakila DVD Rental

The Sakila database contains tables related to:

- Films (film, film_category, category, language)
- Actors (actor, film_actor)
- Inventory & Rentals (inventory, rental)
- Customers (customer, address, city, country)
- Payments (payment)
- Stores & Staff (store, staff)



❓ Business Questions & Insights 

1. How many films exist per category?

📄 [Query](SQL/01_films_by_category.sql)
 | 📊 [Results](Results/01_films_by_category.csv)

Insight: The store offers films in all 16 categories. Some categories (e.g., Sports, Foreign) dominate the catalog, which could create oversupply compared to less-represented genres.



2. What are the top 10 longest films in the catalog?

📄 [Query](SQL/02_top_longest_films.sql)
 | 📊 [Results](Results/02_top_longest_films.csv)

Insight: The longest films exceed 180 minutes. While this may add value to certain customers, it may reduce rental turnover (fewer people rent very long films).



3. Who are the top 10 customers by total spending?

📄 [Query](SQL/03_top_customers.sql)
 | 📊 [Results](Results/03_top_customers.csv)

Insight: The top 10 customers contribute a disproportionately high share of total revenue. These VIP clients could be targeted with loyalty programs or exclusive offers.



4. What is the monthly revenue trend in 2007?

📄 [Query](SQL/04_monthly_revenue_2007.sql)
 | 📊 [Results](Results/04_monthly_revenue_2007.csv)

Insight: Revenue shows seasonal peaks, with higher sales in mid-year and end-of-year months. This suggests opportunities for targeted promotions during low months.



5. Which films have never been rented?

📄 [Query](SQL/05_films_never_rented.sql)
 | 📊 [Results](Results/05_films_never_rented.csv)

Insight: A small but significant percentage of films have zero rentals. These titles could be promoted more aggressively, bundled with popular movies, or removed to optimize inventory.



6. What are the top 3 categories by revenue?

📄 [Query](SQL/06_top_categories_revenue.sql)
 | 📊 [Results](Results/06_top_categories_revenue.csv)

Insight: Action, Sports, and Animation are the top revenue-generating categories, accounting for a large share of business income. These genres should be prioritized in stock planning.



7. Which actors have generated the most revenue through their films?

📄 [Query](SQL/07_top_actors_revenue.sql)
 | 📊 [Results](Results/07_top_actors_revenue.csv)

Insight: This shows which actors are the most profitable, useful for targeted marketing campaigns.



8. What are the busiest rental days of the week?

📄 [Query](SQL/08_busiest_rental_day.sql)
 | 📊 [Results](Results/08_busiest_rental_day.csv)

Insight: Identifies peak rental days; management can use this to optimize staffing and promotions.




📈 Visualizations (Power BI)

The following visuals were created to complement the analysis:

- [Monthly Revenue Trend (2007) - line chart](Visuals/MonthlyRevenueTrend.jpg)
- [Top Customers by Revenue - bar chart](Visuals/TopCustomers.jpg)
- [Revenue by Category - donut chart](Visuals/RevenueByCategory.jpg)
- [Films Never Rented - table view](Visuals/FilmsNeverRented.jpg)


❗Power BI Presentation: https://app.powerbi.com/groups/me/reports/cfc69855-129d-4f62-ad55-9cd253f77eae/61c9db703bad7cd4bdaa?experience=power-bi



📝 Conclusions

Revenue is concentrated in a few categories and customers.
There is seasonal behavior that can guide marketing campaigns.
Catalog optimization is needed, as some films are never rented.
A loyalty program for top customers could increase lifetime value.
Focus on high-performing genres to maximize profitability.
