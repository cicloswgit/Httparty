Feature: Alterar Clientes

I want to verificate PUT requests

@executa_put
Scenario: Automatizando PUT
	Given I request a change on registered client on clients endpoint
	Then I see that client modified on the system