require 'httparty'

Given("I request a GET on clients endpoint") do
  @get_clients = HTTParty.get 'http://localhost:3000/clientes'
end

Then("I see all registered clients on response") do
  puts @get_clients.body
  puts @get_clients.code
  expect(@get_clients.code).to eq 200
end