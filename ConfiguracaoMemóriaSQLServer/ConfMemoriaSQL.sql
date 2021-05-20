-- Configurar Memoria Ultlizada pelo SQL --

sp_configure 'show advanced options', 1;  
GO  
RECONFIGURE;  
GO  
sp_configure 'max server memory', <Valor_da_memoria_MB>;  
GO  
RECONFIGURE;  
GO 

-- RECONFIGURE WITH OVERRIDE

"
Referencia:

###você pode alterá-las sem reiniciar o servidor##
https://docs.microsoft.com/pt-br/sql/relational-databases/system-stored-procedures/sp-configure-transact-sql?view=sql-server-ver15

###Essas configurações entram em vigor imediatamente sem a reinicialização do servidor#
https://docs.microsoft.com/pt-br/sql/database-engine/configure-windows/server-memory-server-configuration-options?view=sql-server-ver15
"




