# ppagronegocio-indice-precos
Sistema para alimentação do banco de dados referente á informações de preços de produtos e motivos de queda/ascensão de preços dos mesmos.

Este projeto disponibiliza tanto back-end como front-end para manuseio dos dados referentes ao preço de um conjunto de produtos definidos no mesmo.

É possivel:
           Cadastro de categorias:
                  Dados: Descrição
                  Necessário para a definição da categoria do produto e assim ser possível realizar qualquer tratamento de dados por categoria de produto.
                    ex: HortiFruti, Granjeiro e etc
           Cadastro de eventos:
                  Dados: Descrição
                  Necessário para definir o evento que levou a uma queda/ascensão do preço de um produto em um determinado mês.
                    ex: o preço do tomate foi de 3,00 R$ para 3,20 R$ porque "Fora do período sazonal"
           Cadastro de produtos
                  Dados: Nome comum, Nome cientifico, categoria
