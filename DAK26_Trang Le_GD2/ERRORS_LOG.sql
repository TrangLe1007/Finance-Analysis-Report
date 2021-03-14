SELECT * INTO ERRORS_LOG 
FROM [talent5_0942197789].[Sales]
WHERE Post_code LIKE '0'
GROUP BY Product_name, Customer_ID, Latitude, Date, Longitude, Post_code, Sale_volumns
ORDER BY Date ASC;

