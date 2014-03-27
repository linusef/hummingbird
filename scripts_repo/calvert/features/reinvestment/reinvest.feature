@reinvest
Feature: Reinvestment
	Scenario: The user chooses the same offering
		Then the user should be able to invest in the same offering
		And the interest should be paid to the user

	Scenario: The user chooses another offering for reinvestment
		Then the user should be able to invest in a different offering
		And the interest should be paid to the user

	Scenario: The user chooses not to invest
		Given the user takes no action by the maturity date
		Then the initial amount of reinvestment should return to the user
		And the interest should be paid to the user

	@pending
	Scenario: if the maturity date is not on 15th or 30th