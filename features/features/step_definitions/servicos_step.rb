Dado("que temos acesso a API {string}") do |url|
  @url = url
end

Quando("solicitar um POST para criação do livro") do
  @response = HTTParty.post(@url, 
    :headers => {'cache-control': 'no-cache','content-type': 'application/json'}, 
    :body => {
      'Title' => 'Livro Dom Casmurro',
      'Description' => 'Olhos de cigana louca dissimulada',
      'PageCount' => 256,
      'Excerpt' => 'Sumário resumido',
      'PublishDate' => '2020-06-06T13:38:00.641Z'
    })
end
  
Então("a resposta deverá ter status {float}") do |code|
  expect(@response.code).to eq code
end