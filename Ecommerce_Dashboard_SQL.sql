-- E-Commerce Sales Dashboard SQL Queries
-- Author: Rahul Narkar Portfolio Project

-- Total Sales
SELECT SUM(Amount) AS Total_Sales
FROM Orders;

-- Total Quantity
SELECT SUM(Quantity) AS Total_Quantity
FROM Orders;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Orders;

-- Sales by State
SELECT State, SUM(Amount) AS Total_Sales
FROM Orders
GROUP BY State
ORDER BY Total_Sales DESC;

-- Quantity by Category
SELECT Category, SUM(Quantity) AS Total_Quantity
FROM Orders
GROUP BY Category
ORDER BY Total_Quantity DESC;

-- Profit by Month
SELECT MONTHNAME(OrderDate) AS Month_Name,
       SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY MONTH(OrderDate), MONTHNAME(OrderDate)
ORDER BY MONTH(OrderDate);

-- Sales by Customer
SELECT CustomerName,
       SUM(Amount) AS Total_Sales
FROM Orders
GROUP BY CustomerName
ORDER BY Total_Sales DESC;

-- Quantity by Payment Mode
SELECT PaymentMode,
       SUM(Quantity) AS Total_Quantity
FROM Orders
GROUP BY PaymentMode
ORDER BY Total_Quantity DESC;

-- Profit by Sub-Category
SELECT SubCategory,
       SUM(Profit) AS Total_Profit
FROM Orders
GROUP BY SubCategory
ORDER BY Total_Profit DESC;
