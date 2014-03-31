@email
Feature: Failed payment notification
	Scenario: Failed incoming payment confirmation - KYC issue
		Given I am logged in
		And I make an investment
		When incoming payment fails due to KYC issue
		Then I should receive a notification email

	Scenario: Failed incoming payment confirmation - banking info
		Given I am logged in
		And I make an investment
		When incoming payment fails due to banking info
		Then I should receive a notification email

	Scenario: Failed outgoing payment confirmation
		Given I am logged in
		And I make an investment
		When outgoing payment fails
		Then I should receive a notification email