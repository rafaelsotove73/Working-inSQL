-- ###################################
-- DEVELOPER: RAFAEL SIMON SOTO SUAREZ
-- ###################################
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 

-- #####################################
-- ### BUSQUEDA POR TABLA EN EL OBJETO
-- ### Information_Schema.Columns
-- #####################################

USE AdventureWorks2016_EXT;

SELECT TABLE_NAME, COLUMN_NAME FROM Information_Schema.Columns
WHERE TABLE_CATALOG LIKE '%%' AND TABLE_NAME LIKE '%%' ---AND COLUMN_NAME LIKE '%MOTOR%' 
ORDER BY TABLE_NAME ASC;

