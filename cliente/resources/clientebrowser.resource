*** Settings ***
Documentation    Cadastro de cliente com bibliteca Browser
Library   Browser


*** Keywords ***
Abrir aplicação
    Open Browser    https://irental-qa.app.sisloc.com/login?redirect=/&message     chromium    headless=True    
    Set Viewport Size    1366    768
    Fill Text   //*[@name="email"]    samuel.silva@sisloc.com.br
    Fill Text   //*[@name="password"]    @Siloc00*
    Click   //*[@class="block"]

Criar Cliente 
    Click    css=#quick-actions > div > a:nth-child(2) > i
    Click    //*[@aria-label='PF (Pessoa Física)']
    Fill Text    //*[@aria-label='CPF']    975.791.774-55
    Fill Text    //*[@aria-label='Nome*']    César Luís Viana
    Fill Text    //*[@aria-label='Apelido']    Cesar
    Fill Text    //*[@aria-label='E-mail']    cesar.luis.viana@hidracom.com.br
    Fill Text    //*[@aria-label='Telefone*']    (63) 98900-5944
    Click    //button[.//span[text()='Adicionar endereço']]
    Fill Text    //*[@aria-label='Apelido do Endereço']    Teste endereço
    Fill Text    //*[@aria-label='CEP']    77020-010
    Fill Text   //*[@aria-label='Rua, Avenida ou Praça *']    104 Sul Rua SE 1
    Fill Text    //*[@aria-label='Número']    100
    Fill Text    //*[@aria-label='Complemento']    Casa
    Fill Text    //*[@aria-label='Bairro']    Plano Diretor Sul
    Fill Text    //*[@aria-label='Selecione a cidade']    Palmas
    Click    //*[@aria-label='Selecione a cidade']
    Fill Text    //*[@aria-label='Referência']    Teste
    Click    text=confirmar
    Click    //button[.//span[text()='Adicionar contato']]
    Fill Text    //*[@aria-label='Contato']    teste 1
    Fill Text    //*[@class='full-width']//*[@aria-label='E-mail']    cesar.luis.viana@hidracom.com.br
    Fill Text    //*[@aria-label='Celular']    (63) 98900-5944
    Fill Text    //*[@aria-label='Telefone']    (63) 3215-5944
    Fill Text    //*[@aria-label='Ramal']    10
    Click    //*[@class='q-checkbox__svg fit absolute-full']
    Fill Text    //*[@aria-label='CNH']    78372704278
    Fill Text    //*[@aria-label='Validade']    01/01/2030
    Fill Text    //*[@aria-label='RG']    30.996.954-2
    Fill Text    //*[@aria-label='Orgão emissor']    SSP
    Click    //*[@role='radio']//span[text()='Cliente']
    Fill Text   //textarea[@class="q-field__native q-placeholder"]    teste teste teste
    Click    text=Salvar

