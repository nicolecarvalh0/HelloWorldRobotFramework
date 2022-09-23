# Importando a biblioteca do Selenium 
*** Settings ***
Resource     base.robot

#Antes de cada caso de teste ocorrerá
Test Setup      Nova sessão

#Após cada caso de teste ocorrerá
Test Teardown   Encerra sessão

*** Test Cases ***
Deve selecionar através do texto "Scott Lang" e validar pelo valor selecionado
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list              Scott Lang
    ${selected}=                    Get Selected List Value         class:avenger-list
    Should Be Equal                 ${selected}                     7

Deve selecionar pelo valor (posição do item) e validar valor pelo texto 
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                 6
    ${selected}=                    Get Selected List Label     id:dropdown
    Should Be Equal                 ${selected}                 Loki
