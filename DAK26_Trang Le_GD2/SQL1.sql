INSERT INTO talent5_0942197789.Sales
	SELECT Product_name,
	Latitude,
	Longitude,
	Customer_ID,
	Post_code,
	'1-'+Date+'-2013'as Sale_date,
	Sale_volumns
	FROM [talent5_0942197789].[2013sales_staging] AS a

UNPIVOT
(Sale_volumns FOR Date IN (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)
) AS unpivot_asales;

/*unpivot 2014sales_Staging*/
INSERT INTO talent5_0942197789.Sales
	SELECT Product_name,
	Latitude,
	Longitude,
	Customer_ID,
	Post_code,
	'1-'+Date+'-2014'as Sale_date,
	Sale_volumns
	FROM [talent5_0942197789].[2014sales_staging] AS b

UNPIVOT
(Sale_volumns FOR Date IN (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)
) AS unpivot_bsales

/*unpivot 2015sales_Staging*/
INSERT INTO talent5_0942197789.Sales
	SELECT Product_name,
	Latitude,
	Longitude,
	Customer_ID,
	Post_code,
	'1-'+Date+'-2015'as Sale_date,
	Sale_volumns
	FROM [talent5_0942197789].[2015sales_staging] AS c

UNPIVOT
(Sale_volumns FOR Date IN (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)
) AS unpivot_csales