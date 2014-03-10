@questions
Feature:
  As a user 
  I should be able to reset the selected filters and skip through pages of the list of questions using the pagination navigation
  
  Scenario: Reset the selected filters
    Given I visit "Topics" page
    Then I click on a subtopic filter
    Then I reset filters
  
  Scenario: pagination navigation
  