# Listar Chaves & Certificados 


" ⚠️Atenção: TDE (Transparent Data Encryption - Criptografia de Dados Transparente)

O TDE proteje através da criptgrafia o banco de dados por completo.

A criptografia de um arquivo de banco de dados é feita no nível da página. As páginas em um banco de dados criptografado são criptografadas antes de serem gravadas no disco e descriptografadas quando lidas na memória. A TDE não aumenta o tamanho do banco de dados criptografado. "

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1- Conecte no Master

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
    
#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

#
⭐Referencia:

"Criptografia de Dados Transparente (TDE)"

    https://docs.microsoft.com/pt-br/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15

