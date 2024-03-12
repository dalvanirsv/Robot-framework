*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       abrir o navegador
Test Teardown    fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    esse site verifica o menu Eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria computadores e Informática
    [Tags]             menus     categorias          
    Acessar a home page do site amazon.com.br 
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se aparece a categoria "Computadores e Informática"
    Verificar se aparece a categoria "Tablets"

 Caso de teste 02 - pesquisa do produto
    [Documentation]    esse site verifica a busca de um produto
    [Tags]             busca_produtos    lista_busca
    Acessar a home page do site amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series X"

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho
    Acessar a home page do site Amazon.com.br
    Digitar o nome do produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso  
    