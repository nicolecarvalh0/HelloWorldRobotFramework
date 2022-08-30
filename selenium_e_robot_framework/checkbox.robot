# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com

*** Test Cases ***
Deve validar marcação do chekbox "Thor"
    Open Browser    ${url}     Chrome
    Go To           ${url}/checkboxes
    Select checkbox   id:thor
    Close Browser

