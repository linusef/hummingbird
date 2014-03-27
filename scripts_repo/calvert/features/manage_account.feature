@manage_account
Feature: Manage my own account
	Scenario: Update user information
		Given I visit "Manage account" page
		When I udpate my account with valid information
		Then my account information should be updated successfully

	Scenario: Update user information
		Given I visit "Manage account" page
		When I udpate my account with an invalid email address
		Then I should see an error messasge
		And my original account information should remain unchanged

	Scenario: Update password with a valid new password
		Given I visit "Manage account" page
		When I reset my password with a valid new password
		Then my password should be reset successfully

	Scenario: Update password with an invalid new password
		Given I visit "Manage account" page
		When I reset my password with a valid new password
		Then I should see an error message
		And my original password should remain unchanged