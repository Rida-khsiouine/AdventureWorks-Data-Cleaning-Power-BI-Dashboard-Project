--  Cleaning Dim.Date Table --
SELECT 
  [DateKey], 
  [FullDateAlternateKey]as Date, 
  --,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek]as Day,
  --  [SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear] 
  [WeekNumberOfYear]as Weeknum, 
  [EnglishMonthName]as Month,
  left(EnglishMonthName,3) as monthshort,
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName], 
  [MonthNumberOfYear]Monthnum, 
  [CalendarQuarter]as Quarter, 
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear between 2022 and 2024
