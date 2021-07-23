-- Importe o certificado e Key da DataBase

CREATE CERTIFICATE <Nome para certificado da Replica Secundária>
   FROM FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
   WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
                      DECRYPTION BY PASSWORD = '<Senha Criada no Backup>' );
GO