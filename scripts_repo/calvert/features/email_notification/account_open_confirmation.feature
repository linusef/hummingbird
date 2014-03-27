@email
Feature: Account open confirmation - Welcome letter
	Scenario: I should receive a welcome letter once his account is confirmed
		Given I visit the registration page
		And I register a new account with valid information
		When I click on the link in the confirmation email
		Then I should receive a welcome letter by email
