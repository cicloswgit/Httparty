require 'httparty'
require 'faker'
require 'cpf_faker'

Given("I request a correct POST on clients endpoint") do
  @body = 
  {
    "nome" => Faker::Name.name, 
    "cpf" => Faker::CPF.cpf,
    "endereco" => Faker::StarWars.planet,
    "usuario" => Faker::Pokemon.name,
    "senha"  => Faker::Base.numerify('inicial####')
  }.to_json
  
  @post_clients = HTTParty.post 'http://localhost:3000/clientes',
    :body => @body,
    :headers => {"Content-Type" => 'application/json'}
  
end

Then("I see a new client registered on system") do
  puts @post_clients.body
  expect(@post_clients.code).to eq 201
end