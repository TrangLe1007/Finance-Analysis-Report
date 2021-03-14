SELECT * FROM[talent5_0942197789].[Sales_new]
WHERE Post_code like '0';


SELECT * FROM [talent5_0942197789].[Quantity_data_staging]
WHERE Post_code like '0';


DELETE FROM [talent5_0942197789].[Sales_new] WHERE Post_code like '0';
DELETE FROM [talent5_0942197789].[Quantity_data_staging] WHERE Post_code like '0';