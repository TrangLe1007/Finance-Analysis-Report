/* create new backup table to reflect if needed*/
SELECT *  INTO [talent5_0942197789].[Sales_new] FROM[talent5_0942197789].[Sales] ;

/*create new table to save the result after inner joinning between quantity and sale table*/
CREATE TABLE Inner_table(
Date date,
Product_name varchar(50),
Latitude float,
Longitude float,
Customer_ID varchar(50),
Post_code varchar(50),
Sale_volumns float,
Quantity int
)

/* Insert the result of joining table into the Inner_join table*/
INSERT INTO Inner_table
SELECT [talent5_0942197789].[Sales_new].Sale_date,[talent5_0942197789].[Quantity_data_staging].Product_name, [talent5_0942197789].[Sales_new].Latitude,[talent5_0942197789].[Sales_new] .Longitude, [talent5_0942197789].[Sales_new].Customer_ID,  [talent5_0942197789].[Sales_new].Post_code,  [talent5_0942197789].[Sales_new].Sale_volumns,[talent5_0942197789].[Quantity_data_staging].Quantity
FROM [talent5_0942197789].[Sales_new]
INNER JOIN [talent5_0942197789].[Quantity_data_staging] ON 
[talent5_0942197789].[Sales_new].Product_name=[talent5_0942197789].[Quantity_data_staging].Product_name AND
[talent5_0942197789].[Sales_new].Customer_ID =[talent5_0942197789].[Quantity_data_staging].Customer_ID AND
[talent5_0942197789].[Sales_new].Sale_date=[talent5_0942197789].[Quantity_data_staging].Date;


