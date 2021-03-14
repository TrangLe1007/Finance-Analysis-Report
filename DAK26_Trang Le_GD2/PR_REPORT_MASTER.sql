/* Sales performance due to the input date*/
SELECT Product_name, Date, SUM(Sale_volumns) AS Total
FROM [talent5_0942197789].[Sales]
WHERE Date LIKE 'Jan_13'
GROUP BY Product_name, Date
ORDER BY Product_name ASC; 

/* top 3 of the highest sale_volumns according to the input date*/
SELECT TOP 3 Product_name, Customer_ID, Date, MAX(Sale_volumns) AS Sales
FROM [talent5_0942197789].[Sales]
WHERE Date LIKE 'Jan_13'
GROUP BY Product_name, Customer_ID, Date
ORDER BY MAX(Sale_volumns) DESC;

/*top 5 of the best sale volumns*/
SELECT TOP 5 Product_name, Date, MAX(Sale_volumns) AS Sales
FROM [talent5_0942197789].[Sales]
GROUP BY Product_name, Customer_ID, Date
ORDER BY MAX(Sale_volumns) DESC;
