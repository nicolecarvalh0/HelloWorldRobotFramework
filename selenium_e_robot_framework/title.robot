# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Deve validar o título da página inicial
    Open Browser    https://training-wheels-protocol.herokuapp.com/     firefox
    Title Should Be     Training Wheels Protocol