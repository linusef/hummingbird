@signup
Feature: Sign up
  As a new user 
  I should be able to visit the registration page and fill in all the fields
  So that I will be registered
  
  Scenario: new user registration
    Given I visit "Register" page
    And I fill in all the fields for registration
    Then I should see the successful registration message
    And I click "Sign Out" link