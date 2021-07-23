# Descriptografar DataBase


O passo a passo irá mostrar como descriptografar uma DataBase


" ⚠️Atenção: TDE (Transparent Data Encryption - Criptografia de Dados Transparente)

⚠️Atenção : Quando recriptografar novamente a Database que que foi descriptografada, deve realizar backup do log. Caso não faça apresentará erro abaixo:
#
“Msg 33103, Level 16, State 1, Line 56
A database encryption key already exists for this database.
Msg 33122, Level 16, State 1, Line 60
This command requires a database encryption scan on database 'xxxx'. However, the database has changes from previous encryption scans that are pending log backup. Take a log backup and retry the command.
Msg 5069, Level 16, State 1, Line 60
ALTER DATABASE statement failed."

Completion time: 2021-07-22T22:06:11.3854230-03:00”
#

O TDE proteje através da criptgrafia o banco de dados por completo.

A criptografia de um arquivo de banco de dados é feita no nível da página. As páginas em um banco de dados criptografado são criptografadas antes de serem gravadas no disco e descriptografadas quando lidas na memória. A TDE não aumenta o tamanho do banco de dados criptografado. "

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1- Deligue a criptografia do Banco de Dados; 

    ALTER DATABASE <Nome do Banco de Dados>  
    SET ENCRYPTION OFF;  
    GO  
    
#
/* Aguarde a conclusão da operação de descriptografia, procure por um
valor de 1 na consulta abaixo. */  
#

2- Altere ao status do Banco de Dados;

    SELECT encryption_state  
    FROM sys.dm_database_encryption_keys;  
    GO  
    USE <Nome do Banco de Dados>;  
    GO  
    DROP DATABASE ENCRYPTION KEY;  
    GO  

#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
⭐Referencia:

"Criptografia de Dados Transparente (TDE)"

    https://docs.microsoft.com/pt-br/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15

