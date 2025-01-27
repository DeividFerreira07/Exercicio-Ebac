

Feature: Busca por produtos

    Cenário: Busca com resultados encontrados
    Dado que o usuário está na página inicial
    Quando ele digita "notebook" no campo de busca
    E clica no botão de "Buscar"
    Então ele deve ver uma lista de produtos relacionados ao termo "notebook"

    Cenário: Busca sem resultados
    Dado que o usuário está na página inicial
    Quando ele digita "produto_inexistente" no campo de busca
    E clica no botão de "Buscar"
    Então ele deve ver a mensagem "Nenhum produto encontrado para 'produto_inexistente'"

    Scenario Outline: Busca por categorias diferentes
            Dado que o usuário está na página inicial
            Quando ele digita "<termo>" no campo de busca
            E clica no botão de "Buscar"
            Então ele deve ver "<resultado>"

            Exemplos:
            | termo     | resultado                               |
            | Celular   | Lista de celulares                      |
            | Headphone | Lista de headphones                     |
            | Abajur    | Lista de abajures                       |
            | Xablau    | Nenhum produto encontrado para 'Xablau' |
