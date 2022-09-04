# Importando o arquivo base
*** Settings ***
Resource     base.robot

#Antes de cada caso de teste ocorrerá
Test Setup      Nova sessão

#Após cada caso de teste ocorrerá
Test Teardown   Encerra sessão

*** Test Cases ***
Deve validar o título da página inicial
    Title Should Be     Training Wheels Protocol
    Close Browser