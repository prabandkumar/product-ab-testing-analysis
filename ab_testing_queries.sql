CREATE DATABASE ab_testing;
USE ab_testing;
CREATE TABLE ab_test_data (
    user_id INT,
    experiment_group VARCHAR(20),
    session_date DATETIME,
    clicks INT,
    time_spent FLOAT,
    add_to_cart INT,
    purchase INT,
    order_value FLOAT
);
SELECT *
FROM ab_test_data
LIMIT 10;

SELECT COUNT(*)
FROM ab_test_data;

-- Total Users Per Group
SELECT
experiment_group,
COUNT(user_id) AS total_users
FROM ab_test_data
GROUP BY experiment_group;

-- Total Purchases of each group
SELECT
experiment_group,
SUM(purchase) AS total_purchases
FROM ab_test_data
GROUP BY experiment_group;

-- Conversion Rate
SELECT
experiment_group,
SUM(purchase)*1.0 / COUNT(user_id) *100 AS conversion_rate
FROM ab_test_data
GROUP BY experiment_group;

-- Revenue per user
SELECT
experiment_group,
SUM(order_value)/COUNT(user_id) AS revenue_per_user
FROM ab_test_data
GROUP BY experiment_group;

-- Average order values
SELECT
experiment_group,
AVG(order_value) AS avg_order_value
FROM ab_test_data
WHERE purchase = 1
GROUP BY experiment_group;

-- Daily Experiment Metrics
SELECT
DATE(session_date) AS date,
experiment_group,
COUNT(user_id) AS users,
SUM(purchase) AS purchases,
SUM(order_value) AS revenue,
SUM(purchase)*1.0 / COUNT(user_id)*100 AS conversion_rate
FROM ab_test_data
GROUP BY date, experiment_group
ORDER BY date;


