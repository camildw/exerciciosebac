#language: pt

Funcionalidade: Tela de produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: 
Dado que eu acesse a página do produto

Cenário: Seleção de cor, tamanho e quantidade obrigatórios
Quando eu selecionar a cor, o tamanho
E a quantidade
Então deve inserir o produto no carrinho

Cenário: Adição de até 10 produtos na venda
Quando eu adicionar produtos
E a quantidade for inferior a 11
Então deve inserir os produtos no carrinho

Cenário: Clicando no botão "limpar" volta ao estado original
Quando eu selecionar a cor e/ou tamanho
E clicar no botão limpar
Então os botões devem voltar ao estado original