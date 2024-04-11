*** Settings ***  
Documentation    Essa suite testa o site da amazon.com.br 
Resource         amazon_resources.robot
Test Setup       Abrir o navegador

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu livros do site da amazon
    ...                e verifica a categoria livros em oferta
    [Tags]  livros  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Livros"
    E o "Loja de Livros" deve ser exibido na página
    E a categoria "Indicações Amazon" deve ser exibida na página

    
Caso de teste 02 - Pesquisa de um Produto
     [Documentation]  Este teste pesquisa xbox Series na amazon
     [Tags]  busca_produto
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página
    Depois clicar no produto que aparecer