*** Settings ***
Documentation    Essa suíte testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       abrir o navegador
# Test Teardown    fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    esse site verifica o menu Eletrônicos do site da Amazon.com.br
    ...                e verifica a categoria computadores e Informática
    [Tags]             menus     categorias          
    Acessar a home page do site amazon.com.br 
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletricos e Tecnologia | Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e Informática"

# Caso de teste 02 - pesquisa do produto
#     [Documentation]    esse site verifica a busca de um produto
#     [Tags]             busca_produtos    lista_busca
#     Acessar a home page do site amazon.com.br
#     Digitar o nome do produtoo "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, se está listando o produto pesquisado