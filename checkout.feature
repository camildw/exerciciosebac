#language: pt

Funcionalidade: Tela de Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

Contexto: 
Dado que eu acesse a página de checkout

Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios (marcado com asteriscos)
Quando eu cadastrar o <campo>
E o <campo> tiver um asterisco
Então deve acessar a página de finalização de compra

Exemplo:
|campo|
|"Nome"|
|"Email"|
|"CPF"|

Esquema do Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
Quando eu digitar o <email> no campo e-mail
Então deve exibir a <mensagem> de erro

Exemplo:
|email|mensagem|
|"exemplo.com.br"|"E-mail inválido!"|
|"exemplo@mail.br"|"E-mail inválido!"|

Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta
Quando se eu não inserir um dado em qualquer campo
Então deve exibir a "Preencha os campos vazios!"
