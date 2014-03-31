@static_pages
Feature: Static pages for Calvert
	Scenario: About section
		Given I am on Calvert home page
		And I visit "About" page
		Then I should see "Talks about Calvert Foundation and impact investing together"

	Scenario: Terms of Use section
		Given I am on Calvert home page
		And I visit "Terms of Use" page
		Then I should see "the impact that our investors have created with their investments (impact report would go here)"

	Scenario: Privacy Policy
		Given I am on Calvert home page
		And I visit "Privacy Policy" page
		Then I should see "TBD"

	Scenario: Contact Us
		Given I am on Calvert home page
		And I visit "Contact Us" page
		Then I should see "TBD"