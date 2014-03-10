@signup
Feature: User registration failure
  As a new user 
  I leave any piece of required information off of the registration form
  So I should not be able to register
  
  Scenario: unsucessful registration
    Given I visit "Register" page
    And I fill in part of the required fields for registration
    Then I should not be able to register