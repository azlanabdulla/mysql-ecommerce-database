-- List all orders with user name and total amount
SELECT 
  o.order_id,
  u.name AS customer_name,
  o.total_amount,
  o.status
FROM orders o
JOIN users u ON o.user_id = u.user_id;

-- List order details with products
SELECT 
  o.order_id,
  p.name AS product_name,
  oi.quantity,
  oi.price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN orders o ON oi.order_id = o.order_id;
