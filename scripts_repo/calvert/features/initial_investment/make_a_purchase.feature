@investment
Feature: User makes an investment
	Given that I have set up my account correctly and I am able to make a purchase

	Scenario: Purchase an offering
		Given I am logged in
		And I visit the "Offering" page
		When I select an offering
		And I click on Place Order button
		Then my purchase should be successful

	Scenario: Investments should be purchased on the 30th and the 15th of every month
		Given I am logged in
		And today is not on 15th or 30th
		Then I should not be allowed to invest