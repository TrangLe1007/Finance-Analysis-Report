/*delete the duplicate rows in the Sales table*/

select distinct * into #tmp From [talent5_0942197789].[Sales]
   delete from [talent5_0942197789].[Sales]
   insert into [talent5_0942197789].[Sales]
   select * from #tmp drop table #tmp

   select * from [talent5_0942197789].[Sales]

/*delete the duplicate rows in the Quantity_staging table*/
   select distinct * into #tmp From [talent5_0942197789].[Quantity_data_staging]
   delete from [talent5_0942197789].[Quantity_data_staging]
   insert into [talent5_0942197789].[Quantity_data_staging]
   select * from #tmp drop table #tmp

   select * from [talent5_0942197789].[Quantity_data_staging];