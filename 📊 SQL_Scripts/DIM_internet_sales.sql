--Cleaned the Fact_InternetSales Table --	
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  --  ,[PromotionKey]
  --  ,[CurrencyKey]
  --  ,[SalesTerritoryKey]
  [SalesOrderNumber], 
  --  ,[SalesOrderLineNumber]
  --  ,[RevisionNumber]
  --  ,[OrderQuantity]
  --  ,[UnitPrice]
  --  ,[ExtendedAmount]
  --  ,[UnitPriceDiscountPct]
  --  ,[DiscountAmount]
  --  ,[ProductStandardCost]
  --  ,[TotalProductCost]
  [SalesAmount] 
  --  ,[TaxAmt]
  --  ,[Freight]
  --  ,[CarrierTrackingNumber]
  --  ,[CustomerPONumber]
  --  ,[OrderDate]
  --  ,[DueDate]
  --  ,[ShipDate]
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
where 
  LEFT (OrderDateKey, 4) >= year(getdate())-3 --Ensures we always only bring three years of data from extraction. 
ORDER BY 
  OrderDateKey ASC
