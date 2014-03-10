@countries
Feature:
  As a user 
  The news that I view at the bottom of the country "overview" tab should be the most recent news fetched from our RSS news source for that country.
  
  Scenario: country news
    Given I visit "Countries" page
    And I click any of the countries
    Then I should see the latest news about this country