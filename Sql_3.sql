/****** Script for SelectTopNRows command from SSMS  ******/
--##################################################################################################--
---JOINING TABLES OF THE DATABASE---
--##################################################################################################--
SELECT *
 FROM [veronicas].[SALES].[OrderDetails]
 SELECT *
 FROM [veronicas].[SALES].[OrderStatus]



--######################################################################################################
--LEFT JOIN WITH ALIASES-- THIS IS DEFINE AS DATAS THAT ARE IN LEFT TABLE BUT ARE NOT IN RIGHT TABLE.-- 
--THE LEFT TABLE IS THE PRIMARY TABLE.--
--######################################################################################################## 
 SELECT *
 FROM [veronicas].[SALES].[OrderDetails] AS A
 LEFT JOIN [veronicas].[SALES].[OrderStatus] AS B ON    -- SOME OF THE COLUMNS IS NULL-
                                                        --ASK A QUESTION ON THIS TABLE--
 B.FlowerID  = A.FlowerID


 --LEFT RIGHT. THIS GIVES ERROR--
--SELECT *-
-- FROM A--                    --QUESTION ON THIS
-- RIGHT JOIN B ON  --
 --A.FlowerID  = B.FlowerID--



 --####################################################################################################--
 --RIGHT JOIN WITH ALIASES-- THIS IS DEFINE AS DATAS THAT ARE IN LEFT TABLE BUT ARE NOT IN RIGHT TABLE.-- 
--THE RIGHT TABLE IS THE PRIMARY TABLE.--
--######################################################################################################--
SELECT *
 FROM [veronicas].[SALES].[OrderDetails] AS A
 RIGHT JOIN [veronicas].[SALES].[OrderStatus] AS B ON 
 B.FlowerID  = A.FlowerID


--#######################################################################################################
 --INNER JOIN WITH ALIASES--INTERSECTION OF THE TWO TABLES AND DROP OTHER TABLES THAT DOESN'T INTERSECT
--##########################################################################################################
 SELECT *
 FROM [veronicas].[SALES].[OrderDetails] AS A
 INNER JOIN [veronicas].[SALES].[OrderStatus] AS B ON 
 B.FlowerID  = A.FlowerID


--##############################################################
 --FULL OUTER WITH ALIASES-- UNION OF TWO TABLES
 --##########################################################
 SELECT *
 FROM [veronicas].[SALES].[OrderDetails] AS A
 FULL OUTER JOIN [veronicas].[SALES].[OrderStatus] AS B ON 
 B.FlowerID  = A.FlowerID

