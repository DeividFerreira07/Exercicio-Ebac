

Feature: Cadastro de usuário

  Cenário: Cadastro com todos os campos válidos
  Dado que o usuário está na página de cadastro
  Quando ele preenche todos os campos obrigatórios com dados válidos
  E clica no botão de "Cadastrar"
  Então ele deve ser redirecionado para a página de boas-vindas

  Cenário: Cadastro com campos inválidos
  Dado que o usuário está na página de cadastro
  Quando ele preenche o campo "Email" com "email_invalido"
  E clica no botão de "Cadastrar"
  Então ele deve ver a mensagem "Email inválido, insira um email válido"

  Scenario Outline: Campos obrigatórios não preenchidos
      Dado que o usuário está na página de cadastro
      Quando ele não preenche o campo "<campo>"
      E clica no botão de "Cadastrar"
      Então ele deve ver a mensagem "O campo <campo> é obrigatório"

      Exemplos:
      | campo |
      | Nome  |
      | Email |
      | Senha |
