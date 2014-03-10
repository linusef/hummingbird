@reader
Feature:
  As a user 
  I should be able to submit a new user query which should then be available for admin to approve.
  
  Scenario: submit a user query which will be available for admin to approve
    Given I visit "Submit New Query" page
    And I submit a user query
    Then I should see the text "Your question was successfully submitted. Thank you. Return to Topics and Questions"