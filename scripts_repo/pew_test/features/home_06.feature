@home
Feature:
  As a registered user 
  I click "login" at the top of the home page
  So that I should be taken to the login screen
  
  Scenario: User login
    Given I visit "Home" page
    And I click "Login" link
    Then I should be taken to login screen