SELECT 
	u.email,
    u.address, 
    p.name,
    od.quantity
FROM "ordersDetails" AS od
JOIN "orders" AS o ON od.orderId = o.id 
JOIN "products" AS p ON od.productId = p.id
JOIN "users" AS u ON u.id = o.userId
where o.createdAt::date = CURRENT_DATE;
