# TDE para SQL Server Always On Availability Groups


O passo a passo irá mostrar como criptografar no modo TDE o SQL Server Always On Availability Groups 


" ⚠️Atenção: TDE (Transparent Data Encryption - Criptografia de Dados Transparente)

O TDE proteje através da criptgrafia o banco de dados por completo.

A criptografia de um arquivo de banco de dados é feita no nível da página. As páginas em um banco de dados criptografado são criptografadas antes de serem gravadas no disco e descriptografadas quando lidas na memória. A TDE não aumenta o tamanho do banco de dados criptografado. "

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1 - Crie uma chave mestra na replica Primaria
    
	USE master;
    GO

    CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<Crie uma Senha>';
    GO
	
2 - Crie um certificado protegido pela chave mestra 
    
	CREATE CERTIFICATE <Nome para certificado da Replica Primaria> WITH SUBJECT = 'Certificado Database';
    GO


3 - Crie uma chave de criptografia de banco de dados e proteja-a usando o certificado;

    USE <Nome do Banco de Dados>;
    GO
    CREATE DATABASE ENCRYPTION KEY
    WITH ALGORITHM = AES_256
    ENCRYPTION BY SERVER CERTIFICATE <certificado da Replica Primaria>;
    GO  
	
4 - Backup da chave e certificado da Réplica Primária;
    
	USE [master]
    GO

    BACKUP CERTIFICATE <certificado da Replica Primaria> 
    TO FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
    WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
    ENCRYPTION BY PASSWORD = '<Crie uma Senha>' );
    GO 
	
5 - Crie uma chave mestra na Réplica Secundária;

    USE master;
    GO

    CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<Crie uma Senha>';
    GO   
	
6 - Importe o certificado da Réplica Primária na Réplica Secundária;

    CREATE CERTIFICATE <Nome para certificado da Replica Secundária>
      FROM FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
      WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
                      DECRYPTION BY PASSWORD = '<Senha Criada no Backup>' );
    GO 
 	
7 - Habilite o TDE para Database na Réplica Primária; 

    ALTER DATABASE <Nome do Banco de Dados>
    SET ENCRYPTION ON;
    GO
    
#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
⭐Referencia:

"Criptografia de Dados Transparente (TDE)"

    https://docs.microsoft.com/pt-br/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15

