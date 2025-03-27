#language: pt

Funcionalidade: Tela de Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto: 
Dado que eu acesse a página de checkout

Cenário: Deve ser cadastrado com todos os dados obrigatórios (marcado com asteriscos)
Quando eu cadastrar o <dado>
E o campo tiver um asterisco
Então deve acessar a página de finalização de compra

Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando eu digitar o <dado> no campo e-mail
Então deve exibir a <mensagem> de erro

Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
Quando eu digitar o <dado> em qualquer campo
Então deve exibir a <mensagem> de alerta

Exemplo:
|dado|mensagem|
|"João Pereira"|""|
|"email"|"E-mail inválido!"|
|""|"Existem campos vazios!"|