/****** Script for SelectTopNRows command from SSMS  ******/

--ADDING A NEW COLUMN--
ALTER TABLE [veronicas].[SALES].[Flowers] ADD Sales float

--UPDATE THE EMPTY COLUMN--
UPDATE [veronicas].[SALES].[Flowers]
 SET Sales = Height + Cost

--CHECK THE TABLE AGAIN---
SELECT * FROM [veronicas].[SALES].[Flowers] AS DATA

--ADDING A NEW COLUMN FOR A PERCENTAGE --

ALTER TABLE [veronicas].[SALES].[Flowers] ADD  Sales2 float

---Performing the percentage math operation--
UPDATE [veronicas].[SALES].[Flowers] SET Sales2= StockLevel / 100

UPDATE [veronicas].[SALES].[Flowers] SET Sales2= StockLevel / Cost WHERE Cost >0

---OREDER BY ----

SELECT * FROM [veronicas].[SALES].[Flowers] order by TempRange Desc

SELECT * FROM [veronicas].[SALES].[Flowers] order by TempRange Asc

--WORKING WITH LEFT AND RIGHT--
SELECT * FROM [veronicas].[SALES].[Flowers] 

SELECT LEFT(CommonName, 3) FROM [veronicas].[SALES].[Flowers] 

SELECT RIGHT(CommonName, 3) FROM [veronicas].[SALES].[Flowers]
 SELECT REVERSE(CommonName) FROM [veronicas].[SALES].[Flowers] 

 --WORKING WITH NULL AND IS NULL KEYS--
 SELECT * FROM [veronicas].[SALES].[Flowers]  WHERE Sales2 = NULL
  SELECT * FROM [veronicas].[SALES].[Flowers]  WHERE Sales2 IS NOT NULL
