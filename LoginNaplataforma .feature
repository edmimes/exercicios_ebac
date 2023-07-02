 Funcionalidade: Login Na plataforma  
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Login na Plataforma
            Dado que acesso a paginá do EBAC-SHOP

            Esquema do Cenário: Acesso com dados validos
            Quando digitar <email> e <senha> validos
			E clicar em confirmar login
            Então cliente é redirecionado para a tela de checkout
            E visualiza seu pedidos

            Exemplos:
            | email                     | senha    |
            | marimbondo@zumzum.com     | $159248# |
            | cafécomleite@chaleira.com | @-@89111 |
            | um+um@ehdois.com          | 123#450  |


            Esquema do Cenário: Erro de login
            Quando digito <email> ou <senha> invalido
            Então Deve mostrar a mensagem "Usuário ou senha inválidos"

            Exemplos:
            | email                     | senha        |
            | ///hhh@hhhhhhhh           | $159248#     |
            | cafécomleite@chaleira.com | """""""""""" |
            | um+um@ehdois.com          |        |     |
            | cafécomleite#chaleira.com | $159248#     |