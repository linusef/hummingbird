@homepage
Feature: Home page
	Scenario: Check QuickQA Home page
		Given I visit "Home" page
		Then I should see the text "Making your tests easier, faster and more fun"
		And I should see the text "Create a project"
	@home2
	Scenario: Home page test 2
		Given This is home page test 2