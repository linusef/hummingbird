Feature: User login
  In order to create an article
  As an editor
  I want to login to the site
  
  Scenario: successful login
    Given "qa-test" and "ABCDEFG" is a valid combination of username and password
    And I visit home page
    And I login with "qa-test" and "ABCDEFG"
    Then I should see the dashboard page
    And there should be a logout link