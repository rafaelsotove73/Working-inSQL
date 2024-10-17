-- Active: 1728986331531@@ATLHAS@1433
-- ###################################
-- DEVELOPER: RAFAEL SIMON SOTO SUAREZ
-- ###################################
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

-- ###########################################################################
-- TRANSC SQL QUE SIVE PARA BUSCAR NOMBRE DE CAMPO DE UNA BASE DE DATOS
-- EN ESPECIFICO
-- ########################################################################## 

USE AdventureWorks2016_EXT;

-- TABLA DE INFROMACION DE LA BASE DE DATOS POR COLUMNA
-- ####################################################

-- INFORMATION_SCHEMA.TABLES: Información sobre todas las tablas y vistas en la base de datos.
--  ###########################################################################################

SELECT * FROM INFORMATION_SCHEMA.TABLES;

 -- INFORMATION_SCHEMA.COLUMNS: Información sobre las columnas de todas las tablas y vistas.
 -- ###########################################################################################-
SELECT * FROM INFORMATION_SCHEMA.COLUMNS;

SELECT * FROM Information_Schema.Columns
WHERE TABLE_CATALOG = 'AdventureWorks2016_EXT';

SELECT TABLE_NAME, COLUMN_NAME FROM Information_Schema.Columns
WHERE TABLE_CATALOG = 'AdventureWorks2016_EXT';

-- ##################################
-- ### EJEMPLOS PRACTICOS DE COLUMNS
-- ###################################
SELECT TABLE_NAME, COLUMN_NAME FROM Information_Schema.Columns
WHERE TABLE_CATALOG = 'AdventureWorks2016_EXT'
AND  COLUMN_NAME LIKE '%r%' ; 

 SELECT * from [AdventureWorks2016_EXT].[Sales].[SalesTaxRate] where SalesTaxRateID like '%%';

SELECT TABLE_NAME, COLUMN_NAME FROM Information_Schema.Columns
WHERE TABLE_CATALOG = 'AdventureWorks2016_EXT' 
AND  COLUMN_NAME LIKE '%con%' ; 

select * from [AdventureWorks2016_EXT].[Production].[Product];

-- INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE: Información sobre las columnas
-- que están restringidas por una constraint.
-- ##########################################################################

SELECT * FROM Information_Schema.CONSTRAINT_COLUMN_USAGE;


-- INFORMATION_SCHEMA.SCHEMATA: Información sobre los esquemas en la base de datos.
-- #################################################################################


SELECT * FROM INFORMATION_SCHEMA.SCHEMATA;


-- INFORMATION_SCHEMA.TABLE_CONSTRAINTS: Información sobre las constraints de las tablas.
-- ######################################################################################


SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS;

