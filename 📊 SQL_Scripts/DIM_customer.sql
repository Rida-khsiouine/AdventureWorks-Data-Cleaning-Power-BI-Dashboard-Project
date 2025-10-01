--Cleaned Dim_Customer table 
SELECT  
	c.CustomerKey as Customerkey,
    --		,[GeographyKey]
    --		,[CustomerAlternateKey]
    --		,[Title]
    c.FirstName as 'First name',
    --		,[MiddleName]
    c.LastName as 'Last name',
	CONCAT(firstname,' ',lastname)as 'Full name', -- Combined First and Last Name	
    --		,[NameStyle]
    --		,[BirthDate]
    --		,[MaritalStatus]
    --		,[Suffix]
    CASE when c.Gender='M' then 'Male' when c.gender='F' then 'Female' end as Gender,
    --		,[EmailAddress]
    --		,[YearlyIncome]
    --		,[TotalChildren]
    --		,[NumberChildrenAtHome]
    --		,[EnglishEducation]
    --		,[SpanishEducation]
    --		,[FrenchEducation]
    --		,[EnglishOccupation]
    --		,[SpanishOccupation]
    --		,[FrenchOccupation]
    --		,[HouseOwnerFlag]
    --		,[NumberCarsOwned]
    --		,[AddressLine1]
    --		,[AddressLine2]
	--		,[Phone]
	c.DateFirstPurchase,
    --		,[CommuteDistance]
	g.city AS 'Customer city' --joined in customer city from Geography Table 
  FROM 
	dbo.DimCustomer c
	LEFT JOIN DimGeography g on c.GeographyKey = g.GeographyKey
  ORDER BY c.customerkey asc --Order list by Customer

