@registration
Feature: Register an account
	Scenario: Register with invalid information
		Given I visit "Registration" page
		And I register an account with invalid informaiton
		Then I should see the error message

	Scenario: Register with valid information
		Given I visit "Registration" page
		And I register an account with valid informaiton
		Then I should see the success message

	Scenario: First name and last name are required for registration, other fileds are optional
		Given I visit "Registration" page
		And I register an account without first name
		Then I should see the error message
		And I register an account without last name
		Then I should see the error message

	Scenario: The email has been taken for registration
		Given I visit "Registration" page
		And I register and account using an existing email address
		Then the registration should fail
		And I should see the warning message

	Scenario: Password format validation
		Given I visit "Registration" page
		When password and conformation passaord donot match
		Then I should see the error message
		When the password is too short
		Then I should see the warning message
		When the password is too simple
		Then I should see the warning message
		