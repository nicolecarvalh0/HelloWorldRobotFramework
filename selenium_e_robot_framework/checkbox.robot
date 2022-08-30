# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com

*** Test Cases ***
Deve validar marcação do chekbox "Thor" utilizando "id" do componente
    Open Browser                    ${url}     Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor
    Close Browser

