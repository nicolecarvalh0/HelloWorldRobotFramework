# Importando a biblioteca do Selenium 
*** Settings ***
Resource     base.robot

#Antes de cada caso de teste ocorrerá
Test Setup      Nova sessão

#Após cada caso de teste ocorrerá
Test Teardown   Encerra sessão

*** Variables ***
${check_thor}                id:thor
${check_ironman}             css:input[value='iron-man']
${check_blackpanther}        xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Deve validar marcação do checkbox "Thor" utilizando "id" do componente
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Deve validar marcação do checkbox "Homem de ferro" utilizando seletor CSS
    #tag para identificar quando quiser testar somente alguns casos
    #[tags]     ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    checkbox Should Be Selected     ${check_ironman}
    #Contador para aguardar antes de fechar
    #Sleep                           5

Deve validar marcação do checkbox "Pantera Negra" através do Xpath
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_blackpanther}
    checkbox Should Be Selected     ${check_blackpanther}
    Sleep                           5