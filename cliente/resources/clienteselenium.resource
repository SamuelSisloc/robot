*** Settings ***
Documentation    Cadastro de cliente 
Library           SeleniumLibrary


*** Keywords ***
Abrir aplicação
    Open Browser    https://irental-qa.app.sisloc.com/login?redirect=/&message    Headless Chrome    
    Maximize Browser Window    
    Wait Until Element Is Enabled    //*[@name="email"]    15
    Input Text    //*[@name="email"]   samuel.silva@sisloc.com.br
    Input Text    //*[@name="password"]   @Siloc00*
    Click Element    //*[@class="block"]

Criar Cliente
    Wait Until Element Is Visible    css:#quick-actions > div > a:nth-child(2) > i    15
    Click Element    css:#quick-actions > div > a:nth-child(2) > i  
    Wait Until Element Is Visible    //*[@aria-label='PF (Pessoa Física)']     15
    Click Element    //*[@aria-label='PF (Pessoa Física)']
    Input Text    //*[@aria-label='CPF']   788.118.563-53
    Input Text    //*[@aria-label='Nome*']   Nelson Benjamin Farias
    Input Text    //*[@aria-label='Apelido']    Nelson
    Input Text    //*[@aria-label='E-mail']    ryanclaudiobrito@geometrabte.com.br
    Input Text    //*[@aria-label='Telefone*']    (27) 98227-3978
    Execute JavaScript    document.evaluate("//button[.//span[text()='Adicionar endereço']]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    Wait Until Element Is Visible    //*[@aria-label='Apelido do Endereço']     15
    Input Text    //*[@aria-label='Apelido do Endereço']    Teste endereço 
    #Click Element   //*[@class="q-checkbox__truthy"]
    Input Text    //*[@aria-label='CEP']    31620-160
    Input Text    //*[@aria-label='Rua, Avenida ou Praça *']    Praça Elba
    Input Text    //*[@aria-label='Número']    100
    Input Text    //*[@aria-label='Complemento']    Casa
    Input Text    //*[@aria-label='Bairro']    Jardim dos Comerciários
    Input Text    //*[@aria-label='Selecione a cidade']    Belo Horizonte
    Wait Until Element Is Visible    //*[@aria-label='Selecione a cidade']    15
    Click Element   //*[@aria-label='Selecione a cidade']
    Input Text    //*[@aria-label='Referência']    Teste
    Click Element    //*[text()='confirmar']
    Execute JavaScript    document.evaluate("//button[.//span[text()='Adicionar contato']]", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    Wait Until Element Is Visible    //*[@aria-label='Contato']     15
    Input Text    //*[@aria-label='Contato']    teste 1
    Wait Until Element Is Visible    //*[@aria-label='E-mail']    15
    Input Text    //*[@class='full-width']//*[@aria-label='E-mail']    diogomanoelalmeida@jetstar.com.br  
    Input Text    //*[@aria-label='Celular']    (27) 98227-3978
    Input Text    //*[@aria-label='Telefone']    (31) 3434-3535
    Input Text    //*[@aria-label='Ramal']    10
    Click Element    //*[@class='q-checkbox__svg fit absolute-full'] 
    Input Text    //*[@aria-label='CNH']    78372704278
    Input Text    //*[@aria-label='Validade']    01/01/2030
    Input Text    //*[@aria-label='RG']    30.996.954-2
    Input Text    //*[@aria-label='Orgão emissor']    SSP
    Click Element    //span[text()='Cliente']
    Input Text    //*[@class='q-field__native q-placeholder']    teste teste teste 
    Click Element    //*[text()='Salvar']
    Sleep    10 
    
