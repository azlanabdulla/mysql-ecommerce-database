CREATE VIEW user_orders AS
SELECT 
  u.name AS customer_name,
  o.order_id,
  o.status,
  o.total_amount,
  o.order_date
FROM users u
JOIN orders o ON u.user_id = o.user_id;
