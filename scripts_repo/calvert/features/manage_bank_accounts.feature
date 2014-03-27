@manage_bank_account
Feature: Bank accounts management
	Scenario:  Add a bank account with valid information
		Given I visit "Manage bank account" page
		When I fill in with valid bank account info
		Then the account should be added successfully

	Scenario: Add a bank account with invalid information
		Given I visit "Manage bank account" page
		When I fill in with invalid bank account info
		Then the bank account should not be added
		And I should see the error message


	Scenario: Add 3 bank accounts at most
		Given I visit "Manage bank account" page
		And I add the frist bank accounts
		And I add the second bank accounts
		And I add the third bank accounts
		Then 3 bank accounts should be added successfully 
		And the first account should be set as default
		When I try to add the fourth bank account
		Then I should see a warning message

	Scenario: Set another bank account as default
		Given I visit "Manage bank account" page
		And I have 3 bank accounts
		When I choose another bank account as default
		Then the default bank account should be updated successfully

	Scenario: Remove a bank account
		Given I visit "Manage bank account" page
		And I have 2 bank accounts
		When I remove a bank account
		Then the account should be removed successfully

	@pending
	Scenario: Remove the last bank account

	Scenario: Update a bank account with valid information
		Given I visit "Manage bank account" page
		When I udpate an existing bank account with valid infromation
		Then the updated bank account should be updated succesfully

	Scenario: Update a bank account with invalid information
		Given I visit "Manage bank account" page
		When I udpate an existing bank account with invalid infromation
		Then updating the bank account should fail
		And the original bank account should remain unchanged


