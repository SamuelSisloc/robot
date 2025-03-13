*** Settings ***
Documentation    Teste de cadastro de cliente
Resource    ../resources/clienteselenium.resource

*** Test Cases ***
Cadastro de cliente 
    Abrir aplicação
Criar cliente
    Criar Cliente
