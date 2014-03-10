@questions
Feature: User submit questions from home page
  As a user 
  I should be able to submit my own question from the abbreviated form at the bottom of the questions page
  
  Scenario: Submit my question from home page
    Given I visit "Topics & Questions" page
    And I submit my own question
    Then I should see the text "Your question was successfully submitted. Thank you. Return to Topics and Questions"