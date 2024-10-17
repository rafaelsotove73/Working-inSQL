-- ###################################
-- DEVELOPER: RAFAEL SIMON SOTO SUAREZ
-- ###################################
-- @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

DECLARE @NAMEDB VARCHAR(100)

DECLARE CaseCurBD CURSOR FOR
SELECT name
FROM sys.databases
WHERE NOT(name  IN('master','tempdb','model','msdb','GestorContrasennas','SistemaFacturacion','STAGE','TEMPORAL', 'RPS2019Licensing','RPS2019Persistence')) 
AND  NOT(name like 'RPS2015%') AND  NOT(name like 'RPSNEXT%')
group by name;  

OPEN CaseCurBD

FETCH NEXT FROM CaseCurBD INTO @NAMEDB


WHILE(@@FETCH_STATUS = 0)

BEGIN
   PRINT(@NAMEDB)
   FETCH NEXT FROM CaseCurBD INTO @NAMEDB

   ---USE @NAMEDB;  
   DECLARE @DATEV VARCHAR(10) = REPLACE(CONVERT(VARCHAR(10),GETDATE(),4),'.','')
   DECLARE @FILEOUT VARCHAR(100) = 'D:\BASEDATOS_SERVERPR\' + @NAMEDB +'_'+ @DATEV +'_'+ CONVERT(VARCHAR(10),SYSDATETIME ( ))+ '.bak'

   BACKUP DATABASE @NAMEDB  
   TO DISK = @FILEOUT  WITH FORMAT,  MEDIANAME = 'SQLServerBackups',  NAME = 'Full Backup of GestorContrasennas'; 
   PRINT('BACKUP REALIZADO !!')
END

CLOSE CaseCurBD
DEALLOCATE CaseCurBD