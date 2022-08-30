# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Deve validar marcação do chekbox "Thor"
    Open Browser    https://training-wheels-protocol.herokuapp.com/     Chrome
    Go To           https://training-wheels-protocol.herokuapp.com/checkboxes
    Select checkbox   id:thor
    #Close Browser

