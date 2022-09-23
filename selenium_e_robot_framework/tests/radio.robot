# Importando a biblioteca do Selenium 
*** Settings ***
Resource     base.robot

#Antes de cada caso de teste ocorrerá
Test Setup      Nova sessão

#Após cada caso de teste ocorrerá
Test Teardown   Encerra sessão

*** Test Cases ***
Deve selecionar por id e verificar seleção por id
    Go To                               ${url}/radios
    Select Radio Button                 movies          cap
    Radio Button Should Be Set To       movies          cap
    Sleep                               5

Deve selecionar por id e verificar seleção por value
    Go To                               ${url}/radios
    Select Radio Button                 movies          guardians
    Radio Button Should Be Set To       movies          guardians
    Sleep                               5