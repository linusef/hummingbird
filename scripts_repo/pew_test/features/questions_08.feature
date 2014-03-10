@questions
Feature: Browse question detail
  As a user 
  I should be able to click on any question to be taken to the explorer chart associated with that question
  
  Scenario: click any of the questions
    Given I visit "Topics" page
    And I click on any of the questions
    Then I will be taken to question page