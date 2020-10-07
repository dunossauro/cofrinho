# language:pt
Funcionalidade: Parser para o Apoia.se
  """
  Eu, como uma pessoa que usa apoia.se
  Desejo parsear meu CSV
  para obter os apoiadores ativos do mês
  """
  Cenário: Exibir todos os apoiadores
    Dado o csv
      | Apoiador                     | Email     | Status da Promessa     |
      | Joãozinho do grau            | xpto@xpto | Ativo                  |
      | FAUSTO                       | xpto@xpto | Aguardando Confirmação |
      | Um dois três oliveira quatro | xpto@xpto | Inadimplente           |
      | nome sobrenome               | xpto@xpto | Desativado             |

    Quando o parser for invocado com "apoiase"

    Então as pessoas apoiadoras com status "Ativo" deverão ser exibidas
      """
      {
         "apoiase": ["Joãozinho Grau"]
      }
      """
