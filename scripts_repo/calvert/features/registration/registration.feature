@registration
Feature: User Registration
  Scenario: Register with valid information
    Given I visit "Registration" page
    And I register an account with valid informaiton
    Then I should see the message "Please confirm your email first. Or just resend confirmation"
    And I log out

	Scenario Outline: Password validation
		Given I visit "Registration" page
		And I register an account with password "<Password>"
		Then I should see the "<Error Message>"

		Examples: Too Short
			Passwords are invalid if less than 4 characters

			| Password | Error Message                                       |
			| Abc      | Password is too short (minimum is 6 characters)     |
			| Ab123    | Password is too short (minimum is 6 characters)     |

		Examples: Too Simple
			Password must contain one digit character at least

			| Password | Error Message                                       |
			| abc123   | Password must contain big, small letters and digits |
			| ABCdef   | Password must contain big, small letters and digits | 
      | ABC123   | Password must contain big, small letters and digits |	

	Scenario Outline: Email validation
		Given I visit "Registration" page
		And I register an account with email "<Email>"
		Then I should see the "<Error Message>"

    Examples: Invalid email format
      email format must be valid

			| Email    	       | Error Message           |
			| abc@example      | Email is invalid        |
			| 123@test.com     | Email is invalid        |
      | j.@test.com      | Email is invalid        |


  Scenario Outline: Required fields validation
    Given I visit "Registration" page
    And I register an account without "<Field Name>"
    Then I should see the "<Error Message>"

    Examples: required fields missing
      | Field Name     | Error Message               |
      | first_name     | First name can't be blank   |
      | last_name      | Last name can't be blank    |

	Scenario: The email has been taken for registration
		Given I visit "Registration" page
		And I register and account using an existing email address
		Then I should see the message "Email has already been taken"
		