@reader
Feature: Narrow down the reader questions
  As a user 
  I should be able to narrow down the user submitted questions by topic (as determined and set by the admin).
  
  Scenario: narrow down the reader questions by topic
    Given I visit "Reader Queries" page
    And I narrow down the reader questions by topic
    