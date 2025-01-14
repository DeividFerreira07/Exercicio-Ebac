

Feature: Pagamento com cartão de crédito

  Scenario: Pagamento com cartão válido
    Given que o cliente está na página de pagamento
    When ele insere os dados do cartão válidos
    And clica no botão de "Finalizar pagamento"
    Then o pagamento deve ser aprovado
    And ele deve ver o comprovante de pagamento

  Scenario: Pagamento com cartão recusado
    Given que o cliente está na página de pagamento
    When ele insere os dados de um cartão inválido
    And clica no botão de "Finalizar pagamento"
    Then o pagamento deve ser recusado
    And ele deve ver a mensagem "Pagamento recusado, verifique os dados do cartão"

  Scenario Outline: Testando diferentes bandeiras de cartão
    Given que o cliente está na página de pagamento
    When ele insere os dados do cartão com a bandeira "<bandeira>"
    And clica no botão de "Finalizar pagamento"
    Then o pagamento deve ser "<status>"

    Examples:
      | bandeira   | status    |
      | Visa       | aprovado  |
      | MasterCard | aprovado  |
      | Elo        | recusado  |
      | Amex       | aprovado  |
