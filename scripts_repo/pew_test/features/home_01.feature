@home
Feature: Data Explorer
  As a user 
  I should be able to click through a "data explorer" square tile on the home page 
  So that I will be taken to the data explorer URL specified in admin
  
  Scenario: click data explorer
    Given I visit "Home" page
    Then I click on the tile "Data Explorer"
    