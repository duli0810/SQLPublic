# Criptografando DataBase


O passo a passo irá mostrar como criptografar no modo TDE 


" ⚠️Atenção: TDE (Transparent Data Encryption - Criptografia de Dados Transparente)

O TDE proteje através da criptgrafia o banco de dados por completo.

A criptografia de um arquivo de banco de dados é feita no nível da página. As páginas em um banco de dados criptografado são criptografadas antes de serem gravadas no disco e descriptografadas quando lidas na memória. A TDE não aumenta o tamanho do banco de dados criptografado. "

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1- Crie uma chave mestra

    USE master;
    GO

    CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<Crie uma Senha>';
    GO

2- Crie ou obtenha um certificado protegido pela chave mestra

    CREATE CERTIFICATE <Dê um Nome para Certificado> WITH SUBJECT = 'Certificado Database';
    GO

3- Crie uma chave de criptografia de banco de dados e proteja-a usando o certificado;

    USE <Nome do Banco de Dados>;
    GO
    CREATE DATABASE ENCRYPTION KEY
    WITH ALGORITHM = AES_256
    ENCRYPTION BY SERVER CERTIFICATE <Informe o Certificado>;
    GO
    ALTER DATABASE <Nome do Banco de Dados>
    SET ENCRYPTION ON;
    GO

4- Backup do chave e certificado da DATABASE

    USE [master]
    GO

    BACKUP CERTIFICATE <Informe o Certificado>
    TO FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
    WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
    ENCRYPTION BY PASSWORD = '<Crie uma Senha>' );
    GO
    
#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
⭐Referencia:

"Criptografia de Dados Transparente (TDE)"

    https://docs.microsoft.com/pt-br/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15

