*** Settings ***
Resource        ../main.robot


*** Variables ***
&{home}
...		register_button=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[2]
...		input_email=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[2]/input
...		input_name=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[3]/input
...		input_password=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[4]/div/input
...		confirm_password=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[5]/div/input
...		confirm_register_button=//*[@id="__next"]/div/div[2]/div/div[2]/form/button
...		account_balance_button=//*[@id="__next"]/div/div[2]/div/div[2]/form/div[6]/label
...     confirmation_popup=//*[@id="__next"]/div/div[3]/div/div[2]
...     close_confirmation_button=//*[@id="btnCloseModal"]
...     email_login=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[1]/input
...     password_login=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[2]/div/input
...     login_button=//*[@id="__next"]/div/div[2]/div/div[1]/form/div[3]/button[1]
...     URL_account=https://bugbank.netlify.app/home

*** Keywords ***
Dado que eu acesse o Bugbank
    Open Browser                     ${standart.URL}  ${standart.Browser}
    Maximize Browser Window

Quando realizo o cadastro
    Wait Until Element is Visible    ${home.register_button}               20
    Click Element                    ${home.register_button}
    Wait Until Element is Visible    ${home.input_email}                   20
    Click Element                    ${home.input_email}
    Input Text                       ${home.input_email}                   ${sign_up.email}
    Wait Until Element is Visible    ${home.input_name}                    20
    Click Element                    ${home.input_name}
    Input Text                       ${home.input_name}                    ${sign_up.name}
    Wait Until Element is Visible    ${home.input_password}                20
    Click Element                    ${home.input_password}
    Input Text                       ${home.input_password}                ${sign_up.password}
    Wait Until Element is Visible    ${home.confirm_password}              20
    Click Element                    ${home.confirm_password}
    Input Text                       ${home.confirm_password}              ${sign_up.password}
    Wait Until Element is Visible    ${home.account_balance_button}        20
    Click Element                    ${home.account_balance_button}
    Wait Until Element is Visible    ${home.confirm_register_button}       20
    Click Element                    ${home.confirm_register_button}
    Wait Until Element is Visible    ${home.confirmation_popup}            20
    Click Element                    ${home.close_confirmation_button}

E faço o login
    Wait Until Element is Visible    ${home.email_login}                   20
    Click Element                    ${home.email_login}
    Input Text                       ${home.email_login}                   ${sign_up.email}
    Wait Until Element is Visible    ${home.password_login}                20
    Click Element                    ${home.password_login}
    Input Text                       ${home.password_login}                ${sign_up.password}
    Wait Until Element is Visible    ${home.login_button}                  20
    Click Element                    ${home.login_button}
Então entro em minha conta
    Wait until location is           ${home.URL_account}          20
