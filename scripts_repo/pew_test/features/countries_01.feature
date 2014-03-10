@countries
Feature:
  As a user 
  I should be able to filter down the displayed countries for exploring using the filters for regions.
  
  Scenario: 
    Given I visit "Countries" page
    And I click "Asia-Pacific" filter
    Then I should see "60" countries
    And I click "Europe" filter
    Then I should see "110" countries
    And I click "Latin America-Caribbean" filter
    Then I should see "159" countries
    And I click "Middle East-North Africa" filter
    Then I should see "179" countries
    And I click "North America" filter
    Then I should see "184" countries
    And I click "Sub-Saharan Africa" filter
    Then I should see "235" countries
    