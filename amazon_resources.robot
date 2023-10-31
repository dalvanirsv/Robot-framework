*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}    https://www.amazon.com.br/
${menuEletronicos}        //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${texto_header_eletronicos}     Eletrônicos e Tecnologia

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

 fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site amazon.com.br
    Go To    url=${url}    
    Wait Until Element Is Visible    locator=${menuEletronicos}

Entrar no menu "Eletrônicos"
    Click Element     locator=${menuEletronicos}

Verificar se aparece a frase "${frase}"
    Wait Until Page Contains    text=${frase}
    ${header_eletronicos}=    Set Variable    
    Wait Until Element Is Visible    locator=${header_eletronicos}

Verificar se o título da página fica "${titulo}"
    Title Should Be    title=${titulo}

Verificar se aparece a categoria "${categoria_nome}"
    Element Should Be Visible    locator=//a[@aria-label='${categoria_nome}']

Digitar o nome do produtoo "${produto}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${produto}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa, se está listando o produto "${produto}"
    Wait Until Element Is Visible    locator=(//h2[@class='a-size-mini a-spacing-none a-color-base s-line-clamp-4'][contains(.,'${produto}')])[1]
