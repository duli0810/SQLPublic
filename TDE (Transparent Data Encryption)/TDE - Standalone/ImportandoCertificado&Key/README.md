# Importando Certificado e Key da DataBase


O passo a passo irá mostrar como Importar o certificado e Key para uma outra instancia, para assim conseguir restaurar a database e visualizar os dados fora da instancia nativa. 


" ⚠️Atenção1: TDE (Transparent Data Encryption - Criptografia de Dados Transparente)
#
  ⚠️Atenção2: Para este procedimento é necessario ter a mão a senha do backup do certificado
#
O TDE proteje através da criptgrafia o banco de dados por completo.

A criptografia de um arquivo de banco de dados é feita no nível da página. As páginas em um banco de dados criptografado são criptografadas antes de serem gravadas no disco e descriptografadas quando lidas na memória. A TDE não aumenta o tamanho do banco de dados criptografado. "

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

Importe o certificado e Key da DataBase

    CREATE CERTIFICATE <Nome para certificado da Replica Secundária>
       FROM FILE =  'C:\Backups\Certificados\<Nome do Banco de Dados>.cer'
       WITH PRIVATE KEY ( FILE = 'C:\Backups\Certificados\<Nome do Banco de Dados>.pvk', 
                      DECRYPTION BY PASSWORD = '<Senha Criada no Backup>' );
    GO


#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
⭐Referencia:

"Criptografia de Dados Transparente (TDE)"

    https://docs.microsoft.com/pt-br/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15

