-- Top 5 Products by Sales

SELECT
    [Product Name],
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY [Product Name]
ORDER BY TotalSales DESC
LIMIT 5;


-- Top 5 Customers

SELECT
    [Customer Name],
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY [Customer Name]
ORDER BY TotalSales DESC
LIMIT 5;


-- Sales by Category

SELECT
    Category,
    SUM(Sales) AS TotalSales
FROM superstore
GROUP BY Category;


-- Profit by Region

SELECT
    Region,
    SUM(Profit) AS TotalProfit
FROM superstore
GROUP BY Region;


-- Sales Greater Than Average

SELECT *
FROM superstore
WHERE Sales >
(
    SELECT AVG(Sales)
    FROM superstore
);