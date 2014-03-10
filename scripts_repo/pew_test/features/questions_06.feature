@questions
Feature:
  As a user 
  I should be able to filter the question list by clicking on any sub-topic (or changing the selected topic)
  
  Scenario: filter questions by subtopic
    Given I visit "Topics" page
    Then I select different subtopics 
    
  Scenario: change the selected topic
    Given I visit "Topics" page
    Then I change the selected topic
    