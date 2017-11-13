Feature: Excluir Clientes

I want to verificate DELETE requests

@executa_delete
Scenario: Automatizando PUT
	Given I request a delete registered client on clients endpoint
	Then I dont see that client on the system anymore