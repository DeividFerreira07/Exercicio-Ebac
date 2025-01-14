

Feature: Busca por produtos

    Scenario: Busca com resultados encontrados
        Given que o usuário está na página inicial
        When ele digita "notebook" no campo de busca
        And clica no botão de "Buscar"
        Then ele deve ver uma lista de produtos relacionados ao termo "notebook"

    Scenario: Busca sem resultados
        Given que o usuário está na página inicial
        When ele digita "produto_inexistente" no campo de busca
        And clica no botão de "Buscar"
        Then ele deve ver a mensagem "Nenhum produto encontrado para 'produto_inexistente'"

    Scenario Outline: Busca por categorias diferentes
        Given que o usuário está na página inicial
        When ele digita "<termo>" no campo de busca
        And clica no botão de "Buscar"
        Then ele deve ver "<resultado>"

        Examples:
            | termo     | resultado                               |
            | Celular   | Lista de celulares                      |
            | Headphone | Lista de headphones                     |
            | Abajur    | Lista de abajures                       |
            | Xablau    | Nenhum produto encontrado para 'Xablau' |
