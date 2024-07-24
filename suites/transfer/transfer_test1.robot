#  Teste da categoria transferência bancária com sucesso em BDD
*** Settings ***
Resource        ../../resources/main.robot
Test Setup      Criar dois registros válidos
Test Teardown   Fechar navegador

*** Test Cases ***
TC03 - Transferindo valor pelo site Bugbank com sucesso
    Dado que eu entre na página de transferência
    Quando preencho os dados da conta válida a receber o valor
    E seleciono transferir
    Então recebo a confirmação de transferência
