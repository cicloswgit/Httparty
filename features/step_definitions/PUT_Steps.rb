require 'httparty'
require 'faker'
require 'cpf_faker'

Given("I request a change on registered client on clients endpoint") do
    @nome_alterado = Faker::Name.name
    @cpf_alterado = Faker::CPF.numeric
    @endereco_alterado = Faker::StarWars.planet
    @usuario_alterado = Faker::Pokemon.name
    @senha_alterada = Faker::Base.numerify('inicial####')
    @body_put = {
      "nome"  => @nome_alterado,
      "cpf" => @cpf_alterado,
      "endereco" => @endereco_alterado,
      "usuario" => @usuario_alterado,
      "senha" => @senha_alterada
    }.to_json
  
    @put = HTTParty.put 'http://localhost:3000/clientes/4',
      :body => @body_put,
      :headers => {
        "Content-Type" => 'application/json'
      }
end

Then("I see that client modified on the system") do
  puts @put.body
  puts @put.code
  expect(@put.code).to eq 200
  
  
  puts @put["nome"]
  puts @nome_alterado
  expect(@put["nome"]).to eq @nome_alterado

  puts @put["cpf"]
  puts @cpf_alterado
  expect(@put["cpf"]).to eq @cpf_alterado
    
  puts @put["endereco"]
  puts @endereco_alterado  
  expect(@put["endereco"]).to eq @endereco_alterado
    
  puts @put["usuario"]
  puts @usuario_alterado    
  expect(@put["usuario"]).to eq @usuario_alterado
    
  puts @put["senha"]
  puts @senha_alterado     
  expect(@put["senha"]).to eq @senha_alterada
end