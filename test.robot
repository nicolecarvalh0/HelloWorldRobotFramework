*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas-vindas
    Welcome     Nicole  

Deve retornar mensagem de boas-vindas com utilização de variável e palavra reservada Log To Console
    ${result}=      Welcome     Nicole
    Log To Console      ${result}

Deve retornar mensagem de boas-vindas com utilização de variável e palavra reservada Should Be Equal
    ${result}=      Welcome     Nicole
    Should Be Equal     ${result}   Olá Nicole, bem-vindo(a) ao Curso básico de Robot Framework!