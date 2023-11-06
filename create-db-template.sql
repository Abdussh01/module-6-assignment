
SELECT 
    oi.order_id,
    p.name AS product_name,
    oi.quantity,
    oi.quantity * oi.unit_price AS total_amount
FROM Order_Items oi
INNER JOIN Products p ON oi.product_id = p.product_id
ORDER BY oi.order_id ASC;


Task 3:

SELECT 
    cat.name AS category_name,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM Order_Items oi
INNER JOIN Products p ON oi.product_id = p.product_id
INNER JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY cat.name
ORDER BY total_revenue DESC;



Task 4:

SELECT 
    c.name AS customer_name,
    SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
FROM Customers c
INNER JOIN Orders o ON c.customer_id = o.customer_id
INNER JOIN Order_Items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5;