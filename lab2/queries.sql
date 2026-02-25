-- Lab 2: E-Commerce Analytical Queries
-- Author: Muhammad Shahid Ali

-- Query 1: Total revenue per category
SELECT p.category, SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- Query 2: Top 5 customers by spending
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.status = 'delivered'
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Query 3: Monthly orders count
SELECT TO_CHAR(order_date, 'YYYY-MM') AS month,
COUNT(*) AS total_orders,
SUM(total_amount) AS monthly_revenue
FROM orders
GROUP BY TO_CHAR(order_date, 'YYYY-MM')
ORDER BY month;

-- Query 4: Products never ordered
SELECT product_name, category, price
FROM products
WHERE product_id NOT IN (SELECT DISTINCT product_id FROM order_items);

-- Query 5: Order status summary
SELECT status, COUNT(*) AS total_orders,
SUM(total_amount) AS total_value
FROM orders
GROUP BY status
ORDER BY total_orders DESC;
