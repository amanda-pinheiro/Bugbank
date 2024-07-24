*** Settings ***
Resource        ../main.robot

*** Variables ***
&{sign_up}
...     email=frodo@gmail.com
...     name=Frodo Baggins
...     password=123456

&{second_valid_user}
...     email=samwise@gmail.com
...     name=Samwise Gamgee
...     password=bestcharacter