@countries
Feature:
  As a user when 
  I type to search for a country the list of countries should filter live based on available possible matches
  
  Scenario: search countries
    Given I visit "Countries" page
    And I search for countries by the term "united"
    Then I should see "3" countries