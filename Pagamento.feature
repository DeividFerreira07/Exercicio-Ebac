

Funcionalidade: Pagamento com cartão de crédito

  Cenário: Pagamento com cartão válido
    Dado que o cliente está na página de pagamento
    Quando ele insere os dados do cartão válidos
    E clica no botão "Finalizar pagamento"
    Então o pagamento deve ser aprovado
    E ele deve ver o comprovante de pagamento

  Cenário: Pagamento com cartão recusado
    Dado que o cliente está na página de pagamento
    Quando ele insere os dados de um cartão inválido
    E clica no botão "Finalizar pagamento"
    Então o pagamento deve ser recusado
    E ele deve ver a mensagem "Pagamento recusado, verifique os dados do cartão"

  Esquema do Cenário: Testando diferentes bandeiras de cartão
    Dado que o cliente está na página de pagamento
    Quando ele insere os dados do cartão com a bandeira "<bandeira>"
    E clica no botão "Finalizar pagamento"
    Então o pagamento deve ser "<status>"

    Exemplos:
      | bandeira   | status   |
      | Visa       | aprovado |
      | MasterCard | aprovado |
      | Elo        | recusado |
      | Amex       | aprovado |
