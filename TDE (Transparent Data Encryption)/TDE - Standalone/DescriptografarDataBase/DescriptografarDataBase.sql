-- Descriptografar as DataBase

-- 1-

ALTER DATABASE <Nome do Banco de Dados>  
SET ENCRYPTION OFF;  
GO  
/* Aguarde a conclusão da operação de descriptografia, procure por um
valor de 1 na consulta abaixo. */  

----------------------------------------------------------
-- 2-

SELECT encryption_state  
FROM sys.dm_database_encryption_keys;  
GO  
USE <Nome do Banco de Dados>;  
GO  
DROP DATABASE ENCRYPTION KEY;  
GO  