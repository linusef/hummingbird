@email
Feature: Reinvestment consent
	Scenario: Reinvestment consent - 1 (30 days)
		Given I have an investment that is going to be mature in "30" days
		Then I should receive a email notification 

	Scenario: Reinvestment consent - 2 (15 days)
		Given I have an investment that is going to be mature in "15" days
		Then I should receive a email notification