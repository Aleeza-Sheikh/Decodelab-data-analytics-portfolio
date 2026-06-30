-- Query 1: Select All Orders
SELECT * FROM Orders;

-- Query 2: Shipped Orders Only
SELECT OrderID, Product, OrderStatus, CustomerID 
FROM Orders 
WHERE OrderStatus = 'Shipped';

-- Query 3: Top 3 Expensive Orders
SELECT Product, TotalPrice, CustomerID 
FROM Orders 
ORDER BY TotalPrice DESC 
LIMIT 3;

-- Query 4: Total Revenue
SELECT SUM(TotalPrice) AS Total_Revenue 
FROM Orders;

-- Query 5: Orders by Payment Method
SELECT PaymentMethod, COUNT(*) AS OrderCount 
FROM Orders 
GROUP BY PaymentMethod;

-- Query 6: High Quantity & Price Filter
SELECT Product, Quantity, UnitPrice, CustomerID 
FROM Orders 
WHERE Quantity > 3 AND UnitPrice > 500;
