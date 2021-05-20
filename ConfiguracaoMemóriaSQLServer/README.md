# Configurando a Memória do SQL Server


O passo a passo irá mostrar de modo simple como realiza configuração da memória do SQL Server, mesmo ele estando em produção. 

################################ IMPORTANTE ################################# 
        É de total responsabilidade e risco a execução dos procedimento.

#

1 - Digite a Query e execute, para saber o valor máximo de memoria:

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
