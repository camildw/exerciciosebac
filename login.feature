#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: 
Dado que eu acesse a página de autenticação do portal EBAC

Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
Quando eu digitar "usuario@gmail.com"
E a senha "usuario123"
Então deve acessar a tela de checkout

Esquema do Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
Quando eu digitar <usuario>
E a <senha>
Então deve exibir a <mensagem>

Exemplos:
|usuario|senha|mensagem|
|"00usuario00@gmail.com"|"usuario123"|“Usuário ou senha inválidos!”|
|"usuario@gmail.com"|"000usuario000"|“Usuário ou senha inválidos!”|
