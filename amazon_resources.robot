*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.amazon.com.br/
${menuEletronicos}        #nav-xshop > a:nth-child(2)

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

# fechar o navegador
#     Close Browser

Acessar a home page do site amazon.com.br
    Go To    url=${url}    
    Wait Until Element Is Visible    locator=${menuEletronicos}