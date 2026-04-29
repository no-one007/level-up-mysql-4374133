SELECT customer.CustState,
(COUNT(orders.OrderNum) / (SELECT Count(*) AS TotalOrders FROM orders WHERE MONTHNAME(orders.OrderDate) = 'December')) * 100 AS PercentageOfTotalOrders
FROM customer
JOIN orders USING (CustomerID)
WHERE MONTHNAME(orders.OrderDate) = 'December'
GROUP BY CustState
ORDER BY PercentageOfTotalOrders DESC
LIMIT 5;