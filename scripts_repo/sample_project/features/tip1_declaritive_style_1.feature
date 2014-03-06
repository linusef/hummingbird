@tag2
Feature: Imperative style feature
  As an editor
  I want to create and edit an article
  So that other editors can review and submit for approval

  Scenario: write a scenario in imperative style
    Given I visit login page
    And I fill username with "Jackier"
    And I fill in password with "passowrd"
    And I click "Log In" button
    Then I should see the message "You have logged in successfully"
    
    When I click on "Create Content" button
    And I select "Feature" from article type dropdown
    And I fill in Title field with "this is a title"
    And I fill in Date field with "08/26/2013"
    And I fill in Source field with "Source"
    And I fill in Teaser field with "teaser"
    And I click on "Save Draft" button
    
    And I fill in Body field with "Some text"
    # ......
    And I click "Submit for Final Edit" button
    Then I should see some result
    
    