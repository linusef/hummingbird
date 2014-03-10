@reader
Feature: 
  As a user 
  I should be able to review questions submitted by other users and approved by the admin from this page.
  
  Scenario: review questions submitted by other users
    Given I visit "Reader Queries" page
    And I review the questions submitted by other users and approved by the admin
    Then I should see the text "Featured Reader Question:"