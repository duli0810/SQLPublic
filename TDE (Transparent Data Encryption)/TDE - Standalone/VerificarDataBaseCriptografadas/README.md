# Verificando DataBase Criptografadas


O passo a passo irá mostrar todas a DataBase criptografar no modo TDE 


" ⚠️Atenção: TDE (Transparent Data Encryption - Criptografia de Dados Transparente)

O TDE proteje através da criptgrafia o banco de dados por completo.

A criptografia de um arquivo de banco de dados é feita no nível da página. As páginas em um banco de dados criptografado são criptografadas antes de serem gravadas no disco e descriptografadas quando lidas na memória. A TDE não aumenta o tamanho do banco de dados criptografado. "

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1- Verificar DataBase Criptografadas

    SELECT 
          A.[name], 
          A.is_master_key_encrypted_by_server, 
          A.is_encrypted,
          B.*
    FROM 
          sys.databases A
          JOIN sys.dm_database_encryption_keys B ON B.database_id = A.database_id
 #         
 ⚠️Atenção:
 
 -- Coluna "encryption_state" indica em que estado a criptografia se encontra atualmente, cujos valores dessa coluna são:

     0 = Nenhuma chave de criptografia de banco de dados presente, nenhuma criptografia
     1 = Sem-criptografia
     2 = Criptografia em andamento
     3 = Criptografado
     4 = Alteração de chave em andamento
     5 = Descriptografia em andamento
     6 = Alteração de proteção em andamento (o certificado ou a chave assimétrica que está criptografando a chave de criptografia do banco de dados está sendo alterado)	
	
# 

#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
⭐Referencia:

"Criptografia de Dados Transparente (TDE)"

    https://docs.microsoft.com/pt-br/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15

