@background_check
Feature: Investment should be rejected when background check fails
	Scenario: Name mismatch
		Given I am logged in
		And I try to make an investment
		When background check fails due to "Name mismatch"
		Then the investment should be rejected

	Scenario: SSN or TaxID mismatch
		Given I am logged in
		And I try to make an investment
		When background check fails due to "SSN or TaxID mismatch"
		Then the investment should be rejected

	Scenario: Incorrect Address
		Given I am logged in
		And I try to make an investment
		When background check fails due to "Incorrect Address"
		Then the investment should be rejected

	Scenario: DOB mismatch
		Given I am logged in
		And I try to make an investment
		When background check fails due to "DOB mismatch"
		Then the investment should be rejected

	Scenario: Telephone No. mismatch
		Given I am logged in
		And I try to make an investment
		When background check fails due to "Telephone No. mismatch"
		Then the investment should be rejected

	Scenario: Terrorist or Money Laundering
		Given I am logged in
		And I try to make an investment
		When background check fails for "Terrorist or Money Laundering"
		Then the investment should be rejected

	Scenario: High Risk
		Given I am logged in
		And I try to make an investment
		When background check fails for "High Risk"
		Then the investment should be rejected
