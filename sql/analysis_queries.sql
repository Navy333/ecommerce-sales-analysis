-- Basic Queries
SELECT * FROM ecommerce;

-- Aggregation
SELECT Country, SUM(Quantity * UnitPrice) AS Revenue
FROM ecommerce
GROUP BY Country;

-- Joins
SELECT e.InvoiceNo, c.CustomerName
FROM ecommerce e
INNER JOIN customers c
ON e.CustomerID = c.CustomerID;

-- Window Functions
SELECT Description,
       Quantity,
       ROW_NUMBER() OVER (ORDER BY Quantity DESC) AS RankNum
FROM ecommerce;
