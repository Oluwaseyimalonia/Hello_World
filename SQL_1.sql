/****** Script for SelectTopNRows command from SSMS  ******/
/*** SELECT ALL THE DATA FROM THE TABLE**/
SELECT  *
  FROM [veronicas].[SALES].[ClientFlowerMatch]

-- SELECT JUST A COLUNM--
 SELECT zip, FlowerID FROM [SALES].[ClientFlowerMatch]

 -- COUNT THE TABLE----
SELECT COUNT (*)FROM [veronicas].[SALES].[ClientFlowerMatch]

---WHERE STATEMENT----
SELECT  count(zip)
   FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE zip= 2142

--LOGIGAL STATEMENT---AND, OR---
 SELECT  *
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  FlowerID= 193 OR FlowerID= 167  

SELECT  *
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  zip= 2142 OR FlowerID= 167 
  
   SELECT  *
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  zip= 2142 AND FlowerID= 167  --- Here there is no row where zip = 2142 and flowerID- 167--

  SELECT  *
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  zip= 2142 AND Performance= 1

  SELECT  zip, Performance
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  zip= 2142 AND Performance= 1
  
  SELECT  FlowerID, Performance
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  FlowerID= 167 AND Performance= 1
-
-- wildcards MS SQL--USING--
 SELECT  FlowerID, Performance
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  FlowerID LIKE '__1%'
  
  SELECT  FlowerID, Performance
  
  FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  FlowerID LIKE '1_'
  
   SELECT  FlowerID, Performance
   FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  FlowerID LIKE '_3_'

   SELECT  FlowerID, Performance
   FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  FlowerID  NOT LIKE '_3_'

   --USING BETWEEN--
   SELECT  FlowerID, Performance
   FROM [veronicas].[SALES].[ClientFlowerMatch] WHERE  Performance BETWEEN 1 AND 3 



