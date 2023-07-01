            #lenguage: pt
            Funcionalidade: Finaliza Compra
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Em Andamento
            Dado que não sou cadastrado no EBAC-SHOP
            E seleciono produtos na pagina, e incluo no carrinho
            Quando acessar o carrinho, e clicar em minhas compras
            Então deve emitir a mensagem de alerta "Para concluir a compra, cadastre-se"


            Cenário: E-mail inválido
            Dado que preencho meu cadastrado no site da EBAC-SHOP
            E digito um e-mail inválido
            Quando clicar em concluir cadastro
            Então deve emitir a mensagem de alerta "Email invalido"

            Cenario: Alerta para campos vazios
            Dado que deixo campos obrigatorios vazios
            Quando clicar em finalizar cadastro
            Então deve emitir a mensagem de alerta "Preencha os campos obrigatórios"

            Cenário: Preenchimento correto
            Dado que preencho todos os campos asteriscados "obrigatórios"
            Quando clicar em finalizar cadastro
            Então Cadastro é finalizado com sucesso.

            #------------------------------------------------------------------------------------
            Cenário: Configuração de Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que seleciono meus produtos

            Cenário: Mensagem imformatica por falta de preenchimento de informação
            Quando tentar inserir no carrinho sem selecionar cor, tamanho e quantidade
            Então deve aparecer a mensagem "informar a Cor, Tamanho e Quantidade dos itens"

            Cenário: Quantidade superior a permitida
            E seleciono a Cor, tamanho e tamanho
            Quando a quantidade de produto selecionado for maior que 10
            Então deve aparecer a mensagem "São permitidos apenas 10 produtos por cliente!"

            Cenário: Volta ao estado original
            E decido limpar meu itens selecionados
            Quando Quando clicar no Botão limpar
            Então todos os itens devem ser excluidos
            E a pagina deve voltar ao estado original
            #-------------------------------------------------------------------------------------
            Funcionalidade: Em Andamento
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Login na Plataforma
            Dado que acesso a paginá do EBAC-SHOP

            Esquema do Cenário: Acesso com dados validos
            E digitar <email> e <senha> validos
            Quando clicar em confirmar login
            Então Então cliente é redirecionado para a tela de checkout
            E visualiza seu pedidos

            Exemplos:
            | email                     | senha    |
            | marimbondo@zumzum.com     | $159248# |
            | cafécomleite@chaleira.com | @-@89111 |
            | um+um@ehdois.com          | 123#450  |


            Esquema do Cenário: Erro de login
            Quando digito <> ou <> invalido
            Então Deve mostrar a mensagem "Usuário ou senha inválidos"

            Exemplos:
            | email                     | senha        |
            | ///hhh@hhhhhhhh           | $159248#     |
            | cafécomleite@chaleira.com | """""""""""" |
            | um+um@ehdois.com          |        |     |
            | cafécomleite#chaleira.com | $159248#     |