#lenguage: pt
Funcionalidade: checkout
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos


Cenário: 1 Redirecionar para o tela de checkout
Dado que digito um e-mail válido "teste@ebac.com"
E digito uma senha vália "@1425#abc"
Quando clicar no botão avançar
Então devo ser redirecionado para a tela de checkout


Cenário: 2 Campo inválido
Dado que digito um e-mail válido Casacor@ebac.com.br"
E digito uma senha inválida "    |    "
Quando clicar em avançar
Então deve aparecer a mensagem “Usuário ou senha inválidos”

Cenário: 3 Campo inválido
Dado que digito um e-mail inválido teste#ebac.com.br"
E digito uma senha Válida "@123456a"
Quando clicar em avançar
Então deve aparecer a mensagem “Usuário ou senha inválidos”
