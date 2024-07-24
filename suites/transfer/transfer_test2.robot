#  Teste da categoria transferência bancária com sucesso em BDD
*** Settings ***
Resource        ../../resources/main.robot
Test Setup      Criar dois registros válidos
Test Teardown   Fechar navegador

*** Test Cases ***
TC04 - Transferindo valor pelo site Bugbank sem sucesso
    Dado que eu entre na página de transferências
    Quando preencho os dados de conta inválida a receber o valor
    E selecione transferir
    Então recebo a mensagem de erro na operação de transferência