@email
Feature: Information change confirmation
	Scenario: I should receive email notification once information changes
		Given I am logged in
		And I visit "My Account" page
		And I change my own information
		Then I should receive a notification email