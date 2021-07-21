-- TDE para SQL Server Always On Availability Groups --

-- 1- Crie uma chave mestra na replica Primaria

USE master;
GO

CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<Crie uma Senha>';
GO

-- 2- Crie ou obtenha um certificado protegido pela chave mestra

CREATE CERTIFICATE <Nome para certificado - Replica Primaria> WITH SUBJECT = 'Certificado Database';
GO

-- 3- Crie uma chave de criptografia de banco de dados e proteja-a usando o certificado;

USE <Nome do Banco de Dados>;
GO
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES_256
ENCRYPTION BY SERVER CERTIFICATE <certificado - Replica Primaria>;
GO

-- 4- Backup do chave e certificado na replica Primaria

USE [master]
GO

BACKUP CERTIFICATE <certificado - Replica Primaria> 
TO FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
ENCRYPTION BY PASSWORD = '<Crie uma Senha>' );
GO

-- 5- Crie uma chave mestra na replica Secundária

USE master;
GO

CREATE MASTER KEY ENCRYPTION BY PASSWORD = '<Crie uma Senha>';
GO

-- 6- Importe o certificado da replica Primaria na replica Secundária 

CREATE CERTIFICATE <Nome para certificado - Replica Secundária>
   FROM FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
   WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
                      DECRYPTION BY PASSWORD = '<Senha Criada no Backup>' );
GO

-- 7- Habilite o TDE para Database na replica Primaria

ALTER DATABASE <Nome do Banco de Dados>
SET ENCRYPTION ON;
GO