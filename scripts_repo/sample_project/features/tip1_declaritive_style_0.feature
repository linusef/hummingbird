@tag1
Feature: User login
  Scenario: successful login
    Given "qa-test" and "ABCDEFG" is a valid combination of username and password
    And I visit home page
    When I fill in "username" with "qa-test"
    And I fill in "password" with "ABCDEFG"
    And I click on "Log In" button
    Then I should see the success message
    And I should see the "Log Out" link
