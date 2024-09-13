#  Teste da categoria registro em BDD
*** Settings ***
Resource        ../resources/main.robot
Test Teardown   Fechar navegador

*** Test Cases ***
TC01 - Fazendo o registro no site Bugbank
    Dado que eu acesse o Bugbank
    Quando realizo o cadastro
    E faço o login
    Então entro em minha conta
