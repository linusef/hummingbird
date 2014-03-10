@signin
Feature:
  As a registered user 
  I should be able to log in with my facebook account
  
  Scenario: login for non-registered user
    Given I visit "Login" page
    And I login with a facebook account
    Then I should be able to login with FB account successfully
    And I click "Sign Out" link