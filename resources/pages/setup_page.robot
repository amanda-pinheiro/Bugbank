*** Settings ***
Resource        ../main.robot

*** Variables ***
&{setup}
...     msg_account=//*[@id="textName"]


*** Keywords ***
Dado que eu acesso o Bugbank
    Open Browser                     ${standart.URL}  ${standart.Browser}
    Maximize Browser Window

Quando realizo o primeiro cadastro
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

E faço o primeiro login
    Wait Until Element is Visible    ${home.email_login}                   20
    Click Element                    ${home.email_login}
    Input Text                       ${home.email_login}                   ${sign_up.email}
    Wait Until Element is Visible    ${home.password_login}                20
    Click Element                    ${home.password_login}
    Input Text                       ${home.password_login}                ${sign_up.password}
    Wait Until Element is Visible    ${home.login_button}                  20
    Click Element                    ${home.login_button}
E entro na primeira conta
    Wait until Element is Visible    ${setup.msg_account}                  20
Então abro outra guia acessando o Bugbank
    Execute Javascript    window.open('${standart.URL}', '_blank');
    Switch Window    NEW
E realizo o segundo cadastro
    Wait Until Element is Visible    ${home.register_button}               20
    Click Element                    ${home.register_button}
    Wait Until Element is Visible    ${home.input_email}                   20
    Click Element                    ${home.input_email}
    Input Text                       ${home.input_email}                   ${second_valid_user.email}
    Wait Until Element is Visible    ${home.input_name}                    20
    Click Element                    ${home.input_name}
    Input Text                       ${home.input_name}                    ${second_valid_user.name}
    Wait Until Element is Visible    ${home.input_password}                20
    Click Element                    ${home.input_password}
    Input Text                       ${home.input_password}                ${second_valid_user.password}
    Wait Until Element is Visible    ${home.confirm_password}              20
    Click Element                    ${home.confirm_password}
    Input Text                       ${home.confirm_password}              ${second_valid_user.password}
    Wait Until Element is Visible    ${home.account_balance_button}        20
    Click Element                    ${home.account_balance_button}
    Wait Until Element is Visible    ${home.confirm_register_button}       20
    Click Element                    ${home.confirm_register_button}
    Wait Until Element is Visible    ${home.confirmation_popup}            20
    Click Element                    ${home.close_confirmation_button}
E faço o segundo login
    Wait Until Element is Visible    ${home.email_login}                   20
    Click Element                    ${home.email_login}
    Input Text                       ${home.email_login}                   ${second_valid_user.email}
    Wait Until Element is Visible    ${home.password_login}                20
    Click Element                    ${home.password_login}
    Input Text                       ${home.password_login}                ${second_valid_user.password}
    Wait Until Element is Visible    ${home.login_button}                  20
    Click Element                    ${home.login_button}
E entro na segunda conta
    Wait until Element is Visible    ${setup.msg_account}                  20
