--cleaning DIM_Product Table--
SELECT 
   [ProductKey],
   [ProductAlternateKey] as ProductItemCode,
   --		[ProductSubcategoryKey],
   --		,[WeightUnitMeasureCode]
   --		,[SizeUnitMeasureCode]
   [EnglishProductName] as 'Product name',
   ps.EnglishProductSubcategoryName as 'Sub category',
   pc.EnglishProductCategoryName as 'Product category',
   --		,[SpanishProductName]
   --		,[FrenchProductName]
   --		,[StandardCost]
   --		,[FinishedGoodsFlag]
   [Color] as 'Product color',
   --		,[SafetyStockLevel]
   --		,[ReorderPoint]
   --		,[ListPrice]
   [Size] as 'Product size',
   --		,[SizeRange]
   --		,[Weight]
   --		,[DaysToManufacture]
   [ProductLine] as 'Product line',
   --		,[DealerPrice]
   --		,[Class]
   --		,[Style]
   [ModelName] as 'Product model name',
   --		,[LargePhoto]
   [EnglishDescription] as 'Product description',
   --		,[FrenchDescription]
   --		,[ChineseDescription]   
   --		,[ArabicDescription]
   --		,[HebrewDescription]
   --		,[ThaiDescription]
   --		,[GermanDescription]
   --		,[JapaneseDescription]
   --		,[TurkishDescription]
   --		,[StartDate]
   --		,[EndDate]
      coalesce(Status,'Outdated')as 'Product Status'
FROM 
  [dbo].[DimProduct] p
  left join dbo.DimProductSubcategory ps on p.ProductSubcategorykey = ps.ProductSubcategorykey
  left join dbo.DimProductCategory pc on pc.ProductCategoryKey = ps.ProductCategoryKey

