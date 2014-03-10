Feature: On project page there should be 4 tabs
	Scenario: Navigate through tabs on a project page
		Given I visit "Home" page
		And I open Quick QA project
		Then I should see the text "Features"
		When I click on "Reports" link
		Then I should see the text "Report Title"
		When I click on "Source Files" link
		Then I should see the text "Name" 