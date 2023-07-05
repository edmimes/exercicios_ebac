      #lenguage: pt

      Funcionalidade: Configuração de Produto
      Como cliente da EBAC-SHOP
      Quero configurar meu produto de acordo com meu tamanho e gosto
      e escolher a quantidade
      Para depois inserir no carrinho

      Contexto:
      Dado  Que escolho produtos com o <tamanho> , <cor> e <quantidade> que desejo
    

      Cenário: 1 Inserir produtos no carrinho
      E quantidade de intes for menor ou igual à 10 
      Quando Quando clicar no botão inserir no carrinho
      Então os intens devem ser inseridos no carrinho

      Exemplos:
      | Cor      | Tamanho | Quantidade |
      | Azul     | M       | 01         |
      | Branco   | G       | 04         |
      | Roxo     | P       | 05         |
      | Preto    | GG      | 08         |
      | Amarelo  | PP      | 09         |
      | Vermelho | XG      | 10         |
      | Azuk     | XXG     | 03         |


      Cenário: 2 Não permite inserir produtos no carrinho
      E quantidade de itens é maior que 10 
      Quando Quando clicar no botão inserir no carrinho
      Então não deve permitir iniserir os itens no carrinho

      Exemplos:
      | Cor      | Tamanho | Quantidade |
      | Azul     | M       | 11         |
      | Branco   | G       | 12         |
      | Roxo     | P       | 15         |


      Cenário: 3 Limpar itens
      Quando Quando clicar no botão limpar
      Então tela volta ao estado original

      Exemplos:
      | Cor      | Tamanho | Quantidade |
      | Azul     | M       | 11         |
      | Branco   | G       | 12         |
      | Roxo     | P       | 15         |

