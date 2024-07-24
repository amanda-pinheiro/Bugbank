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

    #E faça o Login
    #Quando eu realizo uma busca de um vôo ida e volta
    #E saindo de Los Angeles EUA
    #E indo para 
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
    #E fecho o navegador