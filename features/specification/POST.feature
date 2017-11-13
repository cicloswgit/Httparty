Feature: Incluir Clientes

I want to verificate POST requests

@executa_post
Scenario: Automatizando POST
	Given I request a correct POST on clients endpoint
	Then I see a new client registered on system