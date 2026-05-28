-- Top Spending Customer

SELECT 
customers.customer_name,
SUM(menu.price * order_details.quantity) AS total_spent
FROM customers
JOIN orders
ON customers.customer_id = orders.customer_id
JOIN order_details
ON orders.order_id = order_details.order_id
JOIN menu
ON order_details.item_id = menu.item_id
GROUP BY customers.customer_name
ORDER BY total_spent DESC;

-- Peak Order Hour

SELECT 
HOUR(order_time) AS order_hour,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY order_hour
ORDER BY total_orders DESC;

-- Most Popular Category

SELECT 
menu.category,
SUM(order_details.quantity) AS total_items_sold
FROM menu
JOIN order_details
ON menu.item_id = order_details.item_id
GROUP BY menu.category
ORDER BY total_items_sold DESC;

-- Average Order Value

SELECT 
AVG(order_total) AS average_order_value
FROM (
    SELECT 
    orders.order_id,
    SUM(menu.price * order_details.quantity) AS order_total
    FROM orders
    JOIN order_details
    ON orders.order_id = order_details.order_id
    JOIN menu
    ON order_details.item_id = menu.item_id
    GROUP BY orders.order_id
) AS order_summary;