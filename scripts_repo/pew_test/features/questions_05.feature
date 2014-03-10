@questions
Feature: Question search
  As a user 
  I should be able to search for a term like "adultery"
  
  Scenario: search questions using keywords
    Given I visit "Topics & Questions" page
    And I search for a term like "adultery"
    Then I should see the text "Do you favor or oppose stoning people who commit adultery?"