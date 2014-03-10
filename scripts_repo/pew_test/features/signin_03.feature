@signin
Feature:
  As a non-registered user 
  If I enter my email address on the login page 
  I should be told that the email address does not exist and I should register
  
  Scenario: login for non-registered user
    Given I visit "Login" page
    And I login with a non-registered email address
    Then I should be told that the email address does not exist and I should register