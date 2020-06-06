#language: pt

Funcionalidade: crud do livro

    Cenário: Criar livro via API
        Dado que temos acesso a API "http://fakerestapi.azurewebsites.net/api/Books"
        Quando solicitar um POST para criação do livro
        Então a resposta deverá ter status 200