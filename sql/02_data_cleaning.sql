SELECT *
FROM customers
WHERE email IS NULL;

SELECT *
FROM orders
WHERE order_amount IS NULL;

DELETE c1
FROM customers c1
JOIN customers c2
ON c1.customer_id = c2.customer_id
AND c1.created_date > c2.created_date;

UPDATE customers
SET city = UPPER(TRIM(city)),
    state = UPPER(TRIM(state));

UPDATE customers
SET email='not_available'
WHERE email IS NULL;
