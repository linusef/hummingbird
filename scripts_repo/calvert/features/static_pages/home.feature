@static_page
Feature: Home page
	Scenario: Intro text
		Given I visit "Home" page
		Then I should see "Investments for social good"

	@manual
	Scenario: Links should be underlined
	@manual
	Scenario: Add “.org” to the logo in such a way that the “Vested” part stands out a bit from the “.org”