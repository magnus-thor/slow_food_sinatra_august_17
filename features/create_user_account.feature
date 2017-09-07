Feature: user can create an account
  As a potential customer
  In order to be able to make an order
  I would like to create an account

  Scenario: user can clik a button to create an account
    Given I visit the site
    And I click on "Register"
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "mypassword"
    And I fill in "Confirm Password" with "mypassword"
    And I fill in "E-mail" with "andreademoja@gmail.com"
    And I fill in "Phone number" with "1234567890"
    And I click on "Submit"
    # Then I should see a message saying "Account succesfully created"

  #Scenario: user fails to confirm password
