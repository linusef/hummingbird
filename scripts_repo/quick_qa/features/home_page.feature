Feature: Home page
	Scenario: Check QuickQA Home page
		Given I visit "Home" page
		Then I should see the text "Making your tests easier, faster and more fun"
		And I should see the text "Create a project"