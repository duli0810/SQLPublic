# Configurando a Memória do SQL Server


O passo a passo irá mostrar de modo simple como realiza configuração da memória do SQL Server, mesmo ele estando em produção. 

#
 ⭐⭐⭐ Não possuo quaisquer responsabilidade na execução dos procedimento. ⭐⭐⭐

#

1 - Digite a Query e execute, para saber o valor máximo de memoria atual:

    sp_configure 'max server memory'
    
2 - Vamos alterar a memoria maxima do SQL: 
    
    sp_configure 'show advanced options', 1;  
    GO  
    RECONFIGURE;  
    GO  
    sp_configure 'max server memory', <Valor_da_memoria_MB>;  
    GO  
    RECONFIGURE;  
    GO     

6 - Confirmando a alteração do valor de memoria, digite a Query : 

    sp_configure 'max server memory' 
    
#
🖥️ Acesse o Blog e veja o passo a passo: https://acesso8.blogspot.com/

"
Referencia:

###você pode alterá-las sem reiniciar o servidor##
https://docs.microsoft.com/pt-br/sql/relational-databases/system-stored-procedures/sp-configure-transact-sql?view=sql-server-ver15

###Essas configurações entram em vigor imediatamente sem a reinicialização do servidor#
https://docs.microsoft.com/pt-br/sql/database-engine/configure-windows/server-memory-server-configuration-options?view=sql-server-ver15
"
