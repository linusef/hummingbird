@email
Feature: Reinvestment confirmation
	Scenario: I should receive an confirmaiton email after the reinvestment
		Given I am logged in
		And I decide to reinvest once my investment is mature
		Then I should receive an confirmation email