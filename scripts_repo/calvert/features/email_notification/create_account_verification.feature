@email
Feature: Create account verification
	Scenario: I should receive a verification email after registering a new account
		Given I visit the "Registration" page
		When I register a new account with valid information
		Then I should receive a verification email
