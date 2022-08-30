# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Deve validar o título da página inicial
    Open Browser    https://training-wheels-protocol.herokuapp.com/     Chrome
    Title Should Be     Training Wheels Protocol
    Close Browser