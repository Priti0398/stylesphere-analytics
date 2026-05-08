Monthly Revenue
SELECT DATE_FORMAT(order_date,'%Y-%m') AS month,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY month
ORDER BY month;

Top Categories by Sales
SELECT p.category,
       SUM(oi.total_price) AS sales
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY sales DESC;

City-wise Revenue
SELECT city,
       COUNT(order_id) AS total_orders,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY city
ORDER BY revenue DESC;

Customer Lifetime Value
SELECT c.customer_name,
       COUNT(o.order_id) AS total_orders,
       SUM(o.total_amount) AS total_spend
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spend DESC;

Product Profitability
SELECT p.product_name,
       SUM(oi.quantity * (oi.unit_price - p.cost_price)) AS profit
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY profit DESC;
