

Feature: Cadastro de usuário

  Scenario: Cadastro com todos os campos válidos
    Given que o usuário está na página de cadastro
    When ele preenche todos os campos obrigatórios com dados válidos
    And clica no botão de "Cadastrar"
    Then ele deve ser redirecionado para a página de boas-vindas

  Scenario: Cadastro com campos inválidos
    Given que o usuário está na página de cadastro
    When ele preenche o campo "Email" com "email_invalido"
    And clica no botão de "Cadastrar"
    Then ele deve ver a mensagem "Email inválido, insira um email válido"

  Scenario Outline: Campos obrigatórios não preenchidos
    Given que o usuário está na página de cadastro
    When ele não preenche o campo "<campo>"
    And clica no botão de "Cadastrar"
    Then ele deve ver a mensagem "O campo <campo> é obrigatório"

    Examples:
      | campo      |
      | Nome       |
      | Email      |
      | Senha      |
