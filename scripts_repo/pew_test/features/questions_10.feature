@questions
Feature:
  As a user 
  I should be able to search for a term like "government" on Topics page
  
  Scenario: search quetions on Topic page
    Given I visit "Topics" page
    Then I search the term a term like "government" on Topic page