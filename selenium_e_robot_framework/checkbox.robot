# Importando a biblioteca do Selenium 
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://training-wheels-protocol.herokuapp.com

*** Test Cases ***
Deve validar marcação do checkbox "Thor" utilizando "id" do componente
    Open Browser                    ${url}     Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor
    Close Browser

Deve validar marcação do checkbox "Homem de ferro" utilizando seletor CSS
    #tag para identificar quando quiser testar somente alguns casos
    #[tags]     ironman
    Open Browser                    ${url}      Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    checkbox Should Be Selected     css:input[value='iron-man']
    #Contador para aguardar antes de fechar
    #Sleep                           5
    Close Browser

Deve validar marcação do checkbox "Pantera Negra" através do Xpath
    Open Browser                    ${url}      Chrome
    Go To                           ${url}/checkboxes
    Select Checkbox                 xpath://*[@id='checkboxes']/input[7]
    checkbox Should Be Selected     xpath://*[@id='checkboxes']/input[7]
    Sleep                           5
    Close Browser