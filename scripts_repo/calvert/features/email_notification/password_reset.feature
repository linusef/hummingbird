@email
Feature: Reset password
	Scenario: Password reset request
		Given I am logged in
		And I visit "Reset Password" page
		When I reset my password
		Then I should receive a password reset request email

	Scenario: Password reset confirmation
		Give I am logged in
		And I visit "Reset Password" page
		When I reset password successfully
		Then I should receive a password reset confirmation email