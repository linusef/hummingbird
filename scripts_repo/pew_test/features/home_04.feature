@home
Feature: home page search
  As a user 
  I should be able to search from the home page for terms like "violence"
  So that I can observe the correct results
  
  Scenario: home page search
    Given I visit "Home" page
    Then I search the term "violence" on home page