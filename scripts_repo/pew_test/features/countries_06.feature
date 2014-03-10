@countries
Feature:
  As a user 
  I should be able to select "compare bermuda" and be taken to the compare screen with bermuda already selected and a second country ready to be selected for comparison.
  
  Scenario: compare Bermuda
    Given I visit "Countries" page
    And I click "Bermuda" link
    And I click "Compare Bermuda »" link
    Then I should see the text "Compare Stats"
    And I click "Add Country" link
    And I select the country "Afghanistan"
    Then I should see the text "Kabul"