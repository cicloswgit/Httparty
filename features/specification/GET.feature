Feature: Consultar Clientes

I want to verificate GET requests

@executa_get
Scenario: Automatizando GET
	Given I request a GET on clients endpoint
	Then I see all registered clients on response