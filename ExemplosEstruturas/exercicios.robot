*** Settings ***
Documentation   Exercicios de condições
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}


*** Variables ***
@{LISTA_NUMEROS}    1    2    3    4    5    6    7    8    9    10
@{LISTA_FRUTAS}    Maça    Uva    Banana    Abacaxi    Melao


*** Test Case ***    
Teste 01
    Teste de numeros   
    Teste de frutas         

*** Keywords ***
Teste de numeros   
    ${NUMERO}=    Set Variable    
   Log To Console    ${\n}     
    FOR    ${NUMERO}    IN    @{LISTA_NUMEROS}
        IF    '${NUMERO}' == '5'
            Log To Console    Eu sou o número 5!
        ELSE IF    '${NUMERO}' == '10'
            Log To Console    Eu sou o número 10!
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
    END
   
Teste de frutas
    Log To Console    ${\n}    
    ${FRUTA}=    Set Variable
    FOR    ${FRUTA}    IN    @{LISTA_FRUTAS}
        IF    '${FRUTA}' == 'Maça'
            Log To Console    Sou a Maça e sou a mais importante!
        ELSE
            Log To Console    Sou a ${FRUTA}
        END
        
    END