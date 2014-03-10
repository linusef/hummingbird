@countries
Feature:
  As a user I should be able to select multiple filters to be applied at once, and clicking "reset filter" should reset them.
  
  Scenario: reset filters
    Given I visit "Countries" page
    And I click "Asia-Pacific" filter
    Then I should see "60" countries
    And I click "Europe" filter
    Then I should see "110" countries
    And I reset the country filters
    Then I should see "235" countries