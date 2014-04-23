@report
Feature: Delete reports
	In order to remove outdated reports
	As a tester
	I should be able to delete reports

	Scenario: Delete a report
		Given I have an outdated test report
		And I open QuickQA project
		And I open Reports page
		Then I should be able to delete the report
		And I should see the success message
	@delete
	Scenario: Delete test 2
		Given This is delete test 2

