
-- Add your sql here

SELECT customers.customer_name as Customer,printf('$%.2f',SUM(subscriptions.subscription_length*subscriptions.price_per_month)) AS Amount_Due
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id
LEFT JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id
WHERE orders.order_status = 'unpaid' and subscriptions.description = 'Fashion Magazine'
GROUP  BY customers.customer_name ;
























