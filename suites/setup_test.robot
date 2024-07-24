#  Setup específico para operações bancárias com dois registros válidos BDD
*** Settings ***
Resource        ../resources/main.robot
Test Teardown   Fechar navegador

*** Test Cases ***
TC02 - Criar dois registros válidos
    Dado que eu acesso o Bugbank
    Quando realizo o primeiro cadastro
    E faço o primeiro login
    E entro na primeira conta
    Então abro outra guia acessando o Bugbank
    E realizo o segundo cadastro
    E faço o segundo login
    E entro na segunda conta