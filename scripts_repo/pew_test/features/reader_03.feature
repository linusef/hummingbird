@reader
Feature:
  As a user 
  I should be able to search for terms like "popular" and see results limited to only user submitted questions.
  
  Scenario: search within reader questions
    Given I visit "Reader Queries" page
    And I search the term a term like "popular" on Readers Queries page