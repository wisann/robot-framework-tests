*** Settings ***  
Documentation    Essa suite testa o site da amazon.com.br 
Resource         amazon_resources.robot
Test Setup       Abrir o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu livros do site da amazon
    ...                e verifica a categoria livros em oferta
    [Tags]  livros  categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Livros"
    Verificar se aparece a frase "Loja de Livros"
    Verificar se aparece a categoria "Indicações Amazon"

Caso de teste 02 - Pesquisa de um Produto
     [Documentation]  Este teste pesquisa xbox Series na amazon
     [Tags]  busca_produto
     Acessar a home page do site Amazon.com.br
     Digitar o nome do produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa
     Verificar o resultado da pesquisa, listando o produto pesquisado
     Clicar no produto pesquisado

Caso de Teste 03 - Adicionar Produto no Carrinho
    [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
    [Tags]             adicionar_carrinho 
     Acessar a home page do site Amazon.com.br
     
     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa
     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
     Adicionar o produto "Console Xbox Series S" no carrinho
    Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
 
Caso de Teste 04 - Remover Produto do Carrinho
     [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
     [Tags]             remover_carrinho
     Acessar a home page do site Amazon.com.br
     Digitar o nome "Xbox Series S" no campo de pesquisa
     Clicar no botão de pesquisa.
     Verificar o resultado da pesquisa se esta listando o produto "Console Xbox Series S"
     Adicionar o produto "Console Xbox Series S" no carrinho.
     Verificar se o produto "Console Xbox Series S" foi adicionado
     Remover o produto "Console Xbox Series S" do carrinho
#     Verificar se o carrinho fica vazio



