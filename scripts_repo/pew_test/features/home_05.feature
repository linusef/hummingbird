@home
Feature: User registration
  As a new user 
  I should be taken to the register page by clicking "register" at the top of the page
  
  Scenario: User registration
    Given I visit "Home" page
    And I click "Register" link
    Then I should be taken to the register page