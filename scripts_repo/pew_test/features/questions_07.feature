@questions
Feature:
  As a user 
  I should be able to view and click through the admin selected "featured survey question"
  
  Scenario:
    Given I visit "Reader Queries" page
    Then I should see the text "Featured Reader Question:"
    And I should be able to click through the admin selected reader questions