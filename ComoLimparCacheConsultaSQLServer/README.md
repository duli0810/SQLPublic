# Como limpar o cache de consulta do SQL Server?


O passo a passo irá mostrar como limpar o cache de consulta do SQL Server?. 


" ⚠️Atenção: A limpeza de cache deve ser utilizada de modo controlado, pois em um ambiente de produção  pode ocasionar queda de performance, devido a função Cache de plano, que armazena consultas que já foram executadas, com isso o SQL tem a possibilidade de reutilizadas estas consultas para assim otimizar a performance. 

Escolha um horário adequado, fora do horário de pico e certifique que seu backup esta Ok"

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1 - Abra o SSMS :
      
2 - Click em New Query 
      
6 - Digite o Comando abaixo: 

    USE <Nome do Banco de Dados>;

    GO

    DBCC DROPCLEANBUFFERS;

    GO 
    
#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/2021/07/como-limpar-o-cache-de-consulta-do-sql.html

#
⭐Referencia:

"DBCC DROPCLEANBUFFERS (Transact-SQL)"

    https://docs.microsoft.com/pt-br/sql/t-sql/database-console-commands/dbcc-dropcleanbuffers-transact-sql?view=sql-server-ver15

