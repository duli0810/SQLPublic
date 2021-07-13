-- Como limpar o cache de consulta do SQL Server? --

USE <Nome do Banco de Dados>;

GO

DBCC DROPCLEANBUFFERS;

GO


"
Referencia:

###DBCC DROPCLEANBUFFERS (Transact-SQL)##
https://docs.microsoft.com/pt-br/sql/t-sql/database-console-commands/dbcc-dropcleanbuffers-transact-sql?view=sql-server-ver15

"




