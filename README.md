📄 README.md – Sakila DVD Rental SQL Case Study

🎯 Project Overview

This project analyzes the Sakila DVD Rental Database, a sample database simulating a movie rental business.
The goal is to practice SQL while answering key business questions that would help managers make data-driven decisions.

The analysis includes:

SQL queries to answer realistic business questions.
CSV exports with query results.
Power BI visualizations of selected insights.
Business conclusions and recommendations.

🗂️ Repository Structure
sakila-sql-case-study/
├─ README.md                  # Project documentation
├─ sql/                       # All SQL queries (1 file per question)
├─ results/                   # CSV exports of query results
│   ├─ screenshots/           # Power BI visuals (PNG/JPG)
└─ data_dictionary.md         # Short explanation of Sakila tables used

📊 Dataset – Sakila DVD Rental

The Sakila database contains tables related to:

Films (film, film_category, category, language)
Actors (actor, film_actor)
Inventory & Rentals (inventory, rental)
Customers (customer, address, city, country)
Payments (payment)
Stores & Staff (store, staff)

❓ Business Questions & Insights
1. How many films exist in the catalog and how many per category?

📄 [Query](sql/01_films_by_category.sql)
 | 📊 [Results](results/01_films_by_category.csv)

Insight: The store offers films in all 16 categories. Some categories (e.g., Sports, Action) dominate the catalog, which could create oversupply compared to less-represented genres.



2. What are the top 10 longest films in the catalog?

📄 [Query](sql/02_top_longest_films.sql)
 | 📊 [Results](results/02_top_longest_films.csv)

Insight: The longest films exceed 180 minutes. While this may add value to certain customers, it may reduce rental turnover (fewer people rent very long films).



3. Who are the top 10 customers by total spending?

📄 [Query](sql/03_top_customers.sql)
 | 📊 [Results](results/03_top_customers.csv)

Insight: The top 10 customers contribute a disproportionately high share of total revenue. These VIP clients could be targeted with loyalty programs or exclusive offers.



4. What is the monthly revenue trend in 2006?

📄 [Query](sql/04_monthly_revenue_2007.sql)
 | 📊 [Results](results/04_monthly_revenue_2006.csv)

Insight: Revenue shows seasonal peaks, with higher sales in mid-year and end-of-year months. This suggests opportunities for targeted promotions during low months.



5. Which films have never been rented?

📄 [Query](sql/05_films_never_rented.sql)
 | 📊 [Results](results/05_films_never_rented.csv)

Insight: A small but significant percentage of films have zero rentals. These titles could be promoted more aggressively, bundled with popular movies, or removed to optimize inventory.



6. What are the top 3 categories by revenue?

📄 [Query](sql/06_top_categories_revenue.sql)
 | 📊 [Results](results/06_top_categories_revenue.csv)

Insight: Action, Sports, and Animation are the top revenue-generating categories, accounting for a large share of business income. These genres should be prioritized in stock planning.



📈 Visualizations (Power BI)

The following visuals were created to complement the analysis:

Monthly Revenue Trend (2006) → line chart.
Top Customers by Revenue → bar chart.
Revenue by Category → donut chart.
Films Never Rented → table view.

📸 Screenshots available in: results/screenshots/

📝 Conclusions

Revenue is concentrated in a few categories and customers.
There is seasonal behavior that can guide marketing campaigns.
Catalog optimization is needed, as some films are never rented.
A loyalty program for top customers could increase lifetime value.
Focus on high-performing genres to maximize profitability.
