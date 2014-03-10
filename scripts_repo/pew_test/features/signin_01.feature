@signin
Feature: User login - success
  As a registered user 
  I should be able to login with the correct email address and password
  
  Scenario: login
    Given I visit "Login" page
    And I login with the correct email address and password
    Then I should be able to login
    And I click "Sign Out" link