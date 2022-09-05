#Arquivo que tem utilizações genéricas aos demais
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}                       https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova sessão
    Open Browser                    ${url}     Chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser