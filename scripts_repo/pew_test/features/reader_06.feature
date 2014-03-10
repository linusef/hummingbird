@reader
Feature: User query form validation
  As a user 
  I should not be able to submit a new user query if I leave the email or question blank.
  
  Scenario: I should not be able to submit a user query if email is blank
    Given I visit "Submit New Query" page
    And I fill in every field except email and submit the query
    Then I should see the text "Email is invalid"
  
  Scenario: I should not be able to submit a user query if question is blank
    Given I visit "Submit New Query" page
    And I fill in every field except question and submit the query
    Then I should see the text "Question can't be blank"