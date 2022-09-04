# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}                       https://training-wheels-protocol.herokuapp.com
${check_thor}                id:thor
${check_ironman}             css:input[value='iron-man']
${check_blackpanther}        xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Deve validar marcação do checkbox "Thor" utilizando "id" do componente
    Open Browser                    ${url}     Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Close Browser

Deve validar marcação do checkbox "Homem de ferro" utilizando seletor CSS
    #tag para identificar quando quiser testar somente alguns casos
    #[tags]     ironman
    Open Browser                    ${url}      Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_ironman}
    checkbox Should Be Selected     ${check_ironman}
    #Contador para aguardar antes de fechar
    #Sleep                           5
    Close Browser

Deve validar marcação do checkbox "Pantera Negra" através do Xpath
    Open Browser                    ${url}      Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_blackpanther}
    checkbox Should Be Selected     ${check_blackpanther}
    Sleep                           5
    Close Browser