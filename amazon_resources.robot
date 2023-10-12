*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.amazon.com.br/
${menuEletronicos}        #nav-xshop > a:nth-child(2)
${texto_header_eletronicos} Eletrônicos e Tecnologia

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

# fechar o navegador
#     Close Browser

Acessar a home page do site amazon.com.br
    Go To    url=${url}    
    Wait Until Element Is Visible    locator=${menuEletronicos}

Entrar no menu "Eletrônicos"
    Click Element     locator=${menuEletronicos}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until Page Contains    text=${texto_header_eletronicos}

Verificar se o título da página fica "Eletricos e Tecnologia | Amazon.com.br"