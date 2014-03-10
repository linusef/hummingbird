@reader
Feature:
  As a user 
  I should be able to see the "featured reader question" which was set by the admin, even when it changes.
  
  Scenario: see featured reader question
    Given I visit "Reader Queries" page
    Then I should see the text "Featured Reader Question:"
    And I should see the current featured reader question