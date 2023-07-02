#lenguage: pt
Funcionalidade: FinalizaCompra
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Em Andamento
            Dado que não sou cadastrado no EBAC-SHOP
            E seleciono produtos na pagina, e incluo no carrinho
            Quando acessar o carrinho, e clicar em minhas compras
            Então deve emitir a mensagem de alerta "Cadastre-se para concluir sua compra"


            Cenário: E-mail inválido
            Dado que preencho meu cadastrado no site da EBAC-SHOP
            E digito um e-mail inválido
            Quando clicar em concluir cadastro
            Então deve emitir a mensagem de alerta "e-mail invalido"

            Cenario: Alerta para campos vazios
            Dado que deixo campos obrigatorios vazios
            Quando clicar em finalizar cadastro
            Então deve emitir a mensagem de alerta "Preencha todos os campos obrigatórios"

            Cenário: Preenchimento correto
            Dado que preencho todos os campos asteriscados "obrigatórios"
            Quando clicar em finalizar cadastro
            Então Cadastro é finalizado com sucesso.