SELECT SUM(order_amount) AS total_sales
FROM orders;

SELECT TOP 3
c.customer_id,
c.customer_name,
SUM(order_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.customer_id,c.customer_name
ORDER BY total_spent DESC;
