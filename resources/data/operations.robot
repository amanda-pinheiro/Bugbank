*** Settings ***
Resource        ../main.robot

*** Variables ***
&{operations_data}
#...    account_number='insira o número de uma conta válida'
#...    account_digit='insira o número de uma conta válida'
...    transfer_value=100
...    description=The Shire Credit Card


&{operations_error_data}
...     account_number=123
...     account_digit=4
...     transfer_value=100
...     description=The Shire Credit Card