*** Settings ***
Resource        ../main.robot

*** Variables ***
&{transfer_error}
...     popup_failed_transfer=//*[@id="btnCloseModal"]

*** Keywords ***
Dado que eu entre na página de transferências
    Wait Until Element is Visible    ${transfer.button_transferpage}                   20
    Click Element                    ${transfer.button_transferpage}
    Wait Until Location is           ${transfer.URL_transferpage}                      20
Quando preencho os dados de conta inválida a receber o valor
    Wait Until Element is Visible    ${transfer.input_accountnumber}                   20
    Click Element                    ${transfer.input_accountnumber}
    Input Text                       ${transfer.input_accountnumber}                   ${operations_error_data.account_number}
    Wait Until Element is Visible    ${transfer.input_accountdigit}                    20
    Click Element                    ${transfer.input_accountdigit}
    Input Text                       ${transfer.input_accountdigit}                    ${operations_error_data.account_digit}
    Wait Until Element is Visible    ${transfer.input_transfervalue}                   20
    Click Element                    ${transfer.input_transfervalue}
    Input Text                       ${transfer.input_transfervalue}                   ${operations_error_data.transfer_value}
    Wait Until Element is Visible    ${transfer.input_description}                     20
    Click Element                    ${transfer.input_description}
    Input Text                       ${transfer.input_description}                     ${operations_error_data.description}
E selecione transferir
    Wait Until Element is Visible    ${transfer.button_confirmtransfer}                20
    Click Element                    ${transfer.button_confirmtransfer}
Então recebo a mensagem de erro na operação de transferência
    Wait Until Element is Visible    ${transfer_error.popup_failed_transfer}               20