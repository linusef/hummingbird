@ach
Feature: Investment should be rejected when ACH verification fails
	Scenario: Invalid Routing number
		Given I am logged in
		And I try to make an investment
		When ACH verification fails due to "Invalid Routing number"
		Then the investment should be rejected

	Scenario: Invalid Bank Account Number
		Given I am logged in
		And I try to make an investment
		When ACH verification fails due to "Invalid Bank Account Number"
		Then the investment should be rejected
		
	Scenario: Insufficient Funds
		Given I am logged in
		And I try to make an investment
		When ACH verification fails due to "Insufficient Funds"
		Then the investment should be rejected
		