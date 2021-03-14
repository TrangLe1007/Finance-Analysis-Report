INSERT INTO talent5_0942197789.Sales
	SELECT Product_name,
	Latitude,
	Longitude,
	Customer_ID,
	Post_code,
	Date,
	Sale_volumns
	FROM [talent5_0942197789].[2013sales_staging] AS mth_sls

UNPIVOT
(Sale_volumns FOR Date IN (Jan_13, Feb_13, Mar_13, Apr_13, May_13, Jun_13, Jul_13, Aug_13, Sep_13, Oct_13, Nov_13, Dec_13)
) AS unpivot_sales;

/*unpivot 2014sales_Staging*/
INSERT INTO talent5_0942197789.Sales
	SELECT Product_name,
	Latitude,
	Longitude,
	Customer_ID,
	Post_code,
	Date,
	Sale_volumns
	FROM [talent5_0942197789].[2014sales_staging] AS mth_sls

UNPIVOT
(Sale_volumns FOR Date IN (Jan_14, Feb_14, Mar_14, Apr_14, May_14, Jun_14, Jul_14, Aug_14, Sep_14, Oct_14, Nov_14, Dec_14)
) AS unpivot_sales

/*unpivot 2015sales_Staging*/
INSERT INTO talent5_0942197789.Sales
	SELECT Product_name,
	Latitude,
	Longitude,
	Customer_ID,
	Post_code,
	Date,
	Sale_volumns
	FROM [talent5_0942197789].[2015sales_staging] AS mth_sls

UNPIVOT
(Sale_volumns FOR Date IN (Jan_15, Feb_15, Mar_15, Apr_15, May_15, Jun_15, Jul_15, Aug_15, Sep_15, Oct_15, Nov_15, Dec_15)
) AS unpivot_sales