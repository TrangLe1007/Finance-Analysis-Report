/* finding the composite key between Sales and Quantity table*/
SELECT Sale_date,Product_name, Latitude, Longitude,Customer_ID,Post_code,Sale_volumns FROM [talent5_0942197789].[Sales]
ORDER BY Sale_date, Product_name, Customer_ID


SELECT Date,Product_name ,Latitude, Longitude,Customer_ID,Post_code, Quantity FROM [talent5_0942197789].[Quantity_data_staging]
ORDER BY Date, Product_name,Customer_ID;

/*check result */
SELECT DISTINCT *
FROM [talent5_0942197789].[Inner_table];

