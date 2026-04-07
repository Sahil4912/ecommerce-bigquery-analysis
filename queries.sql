-- Top Revenue Categories
SELECT 
    p.product_category_name,
    SUM(oi.price) AS total_revenue
FROM ecommerce_dataset.order_items oi
JOIN ecommerce_dataset.products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Top Customers
SELECT 
    c.customer_unique_id,
    SUM(oi.price) AS total_spent
FROM ecommerce_dataset.orders o
JOIN ecommerce_dataset.customers c
ON o.customer_id = c.customer_id
JOIN ecommerce_dataset.order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;

-- City-wise Revenue
SELECT 
    c.customer_city,
    SUM(oi.price) AS total_revenue
FROM ecommerce_dataset.orders o
JOIN ecommerce_dataset.customers c
ON o.customer_id = c.customer_id
JOIN ecommerce_dataset.order_items oi
ON o.order_id = oi.order_id
GROUP BY c.customer_city
ORDER BY total_revenue DESC
LIMIT 10;

-- Low Performing Categories
SELECT 
    p.product_category_name,
    SUM(oi.price) AS total_revenue
FROM ecommerce_dataset.order_items oi
JOIN ecommerce_dataset.products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue ASC
LIMIT 10;
