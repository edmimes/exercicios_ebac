  #lenguage: pt
            
            Funcionalidade: Configuração de Produto
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
            Quando seleciono Cor, tamanho e Quantidade
			      E quantidade de produto selecionado for maior que 10
            Então deve aparecer a mensagem "São permitidos no maximo 10 itens por cliente!"

            Cenário: Volta ao estado original
            Quando clicar no Botão limpar
            Então todos os itens devem ser excluidos
            E a pagina volta ao estado original
           