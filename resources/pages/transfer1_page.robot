*** Settings ***
Resource        ../main.robot

*** Variables ***
&{transfer}
...		button_transferpage=//*[@id="__next"]/div/div[3]/div[2]/div[1]
...     URL_transferpage=https://bugbank.netlify.app/transfer
...		input_accountnumber=//*[@id="__next"]/div/div[3]/form/div[1]/div[1]/input
...		input_accountdigit=//*[@id="__next"]/div/div[3]/form/div[1]/div[2]/input
...		input_transfervalue=//*[@id="__next"]/div/div[3]/form/div[2]/input
...		input_description=//*[@id="__next"]/div/div[3]/form/div[3]/input
...		button_confirmtransfer=//*[@id="__next"]/div/div[3]/form/button
...     popup_confirmedtransfer=//*[@id="__next"]/div/div[5]/div/div[2]

*** Keywords ***
Dado que eu entre na página de transferência
    Wait Until Element is Visible    ${transfer.button_transferpage}                   20
    Click Element                    ${transfer.button_transferpage}
    Wait Until Location is           ${transfer.URL_transferpage}                      20
Quando preencho os dados da conta válida a receber o valor
    Wait Until Element is Visible    ${transfer.input_accountnumber}                   20
    Click Element                    ${transfer.input_accountnumber}
    Sleep                                                                              15
    #Input Text                       ${transfer.input_accountnumber}                  ${operations_data.account_number}
    Wait Until Element is Visible    ${transfer.input_accountdigit}                    20
    Click Element                    ${transfer.input_accountdigit}
    Sleep                                                                              15
    #Input Text                       ${transfer.input_accountdigit}                    ${operations_data.account_digit}
    Wait Until Element is Visible    ${transfer.input_transfervalue}                   20
    Click Element                    ${transfer.input_transfervalue}
    Input Text                       ${transfer.input_transfervalue}                   ${operations_data.transfer_value}
    Wait Until Element is Visible    ${transfer.input_description}                     20
    Click Element                    ${transfer.input_description}
    Input Text                       ${transfer.input_description}                     ${operations_data.description}
E seleciono transferir
    Wait Until Element is Visible    ${transfer.button_confirmtransfer}                20
    Click Element                    ${transfer.button_confirmtransfer}
Então recebo a confirmação de transferência
    Wait Until Element is Visible    ${transfer.popup_confirmedtransfer}               20
