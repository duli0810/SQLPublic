-- Listar Chaves e Certificados

USE master;
GO

/* Mostra informações dos bancos de dados. */
select * from sys.databases

/* Lista as Chaves. */ 
select * from sys.symmetric_keys

/* Lista o catalogo de certificados. */	
select * from sys.certificates	

/* Lista o gerenciamento dinâmico que fornece informações sobre chaves de criptografia e o estado de criptografia de um banco de dados. */
select * from sys.dm_database_encryption_keys

