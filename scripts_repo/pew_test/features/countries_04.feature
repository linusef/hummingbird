@countries
Feature: Browse country page
  As a user when 
  I click a country name I should be taken to the home page for that country.
  
  Scenario: click a country
    Given I visit "Countries" page
    And I click any of the countries
    Then the country home page should look fine