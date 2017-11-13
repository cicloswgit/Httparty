require 'httparty'

Given("I request a delete registered client on clients endpoint") do
  @body_delete
  {
    "id"  => 2
  }.to_json
  
  @delete = HTTParty.delete 'http://localhost:3000/clientes/2',
    :body => @body_delete,
    :headers => {
      "Content-Type" => 'application/json'
    }
end

Then("I dont see that client on the system anymore") do
  expect(@delete["id"]).to eq nil    
end