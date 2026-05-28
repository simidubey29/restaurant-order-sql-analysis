-- View All Tables

SELECT * FROM customers;
SELECT * FROM menu;
SELECT * FROM orders;
SELECT * FROM order_details;

-- Total Revenue

SELECT 
SUM(menu.price * order_details.quantity) AS total_revenue
FROM order_details
JOIN menu
ON order_details.item_id = menu.item_id;

-- Best Selling Item

SELECT 
menu.item_name,
SUM(order_details.quantity) AS total_quantity
FROM order_details
JOIN menu
ON order_details.item_id = menu.item_id
GROUP BY menu.item_name
ORDER BY total_quantity DESC
LIMIT 1;

-- Daily Revenue Report

SELECT 
orders.order_date,
SUM(menu.price * order_details.quantity) AS daily_revenue
FROM orders
JOIN order_details
ON orders.order_id = order_details.order_id
JOIN menu
ON order_details.item_id = menu.item_id
GROUP BY orders.order_date;