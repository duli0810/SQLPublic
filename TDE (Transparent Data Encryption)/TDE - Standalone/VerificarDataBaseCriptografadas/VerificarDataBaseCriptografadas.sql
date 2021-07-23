-- Verificar DataBase Criptografadas

SELECT 
    A.[name], 
    A.is_master_key_encrypted_by_server, 
    A.is_encrypted,
    B.*
FROM 
    sys.databases A
    JOIN sys.dm_database_encryption_keys B ON B.database_id = A.database_id
	
	
-- Coluna "encryption_state" indica em que estado a criptografia se encontra atualmente, cujos valores dessa coluna são:
"
0 = Nenhuma chave de criptografia de banco de dados presente, nenhuma criptografia
1 = Sem-criptografia
2 = Criptografia em andamento
3 = Criptografado
4 = Alteração de chave em andamento
5 = Descriptografia em andamento
6 = Alteração de proteção em andamento (o certificado ou a chave assimétrica que está criptografando a chave de criptografia do banco de dados está sendo alterado)	
	
"	
