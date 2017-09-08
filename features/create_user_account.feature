Feature: user can create an account
  As a potential customer
  In order to be able to make an order
  I would like to create an account

  Scenario: user can clik a button to create an account
    Given I visit the site
    And I click on "Register"
    And I fill in "First name" with "Name"
    And I fill in "Last name" with "Last name"
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "mypassword"
    And I fill in "Confirm Password" with "mypassword"
    And I fill in "E-mail" with "andreademoja@gmail.com"
    And I fill in "Phone number" with "1234567890"
    And I fill in "Address" with "Holtermansgatan 1d"
    And I click on "Submit"
    Then I should see a message saying "Successfully created new user"

  Scenario: user enters empty fields
    Given I visit the site
    And I click on "Register"
    And I leave all the fields empty
    And I click on "Submit"
    Then I should see message "Need to fill in all information"

  Scenario: Passwords fields dont match
    Given I visit the site
    And I click on "Register"
    And I give wrong password in confirmation
    And I click on "Submit"
    Then I should see message "Passwords must match"

  Scenario: User already exists
    Given There is a user called Thomas in our database
    And I visit the site
    And I click on "Register"
    And I fill in "First name" with "Name"
    And I fill in "Last name" with "Last name"
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "mypassword"
    And I fill in "Confirm Password" with "mypassword"
    And I fill in "E-mail" with "andreademoja@gmail.com"
    And I fill in "Phone number" with "1234567890"
    And I fill in "Address" with "Holtermansgatan 1d"
    And I click on "Submit"
    Then I should see message "That user already exists"

    Scenario: Email address has already been used
      Given The email address is already registered
      And I visit the site
      And I click on "Register"
      And I fill in "First name" with "Name"
      And I fill in "Last name" with "Last name"
      And I fill in "Username" with "Gianni"
      And I fill in "Password" with "mypassword"
      And I fill in "Confirm Password" with "mypassword"
      And I fill in "E-mail" with "andreademoja@gmail.com"
      And I fill in "Phone number" with "1234567890"
      And I fill in "Address" with "Holtermansgatan 1d"
      And I click on "Submit"
      Then I should see message "Email address already registered"
