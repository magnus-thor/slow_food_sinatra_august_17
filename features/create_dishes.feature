Feature: update the restaurant info
As an owner
In order to update the restaurant's info
I would like to add or change restaurant's description

Background:

Given the following users exist:
  | username | password |
  | admin    | admin    |

And I log in as an admin

Scenario: Admin creates a dish
  Given I visit the protected page
  When I click on "Create dish"
  And I fill in "Name" with "Oysters"
  And I fill in "Description" with "Sea food"
  And I fill in "Price" with "150"
  And I fill in "Category" with "Main"
  And I click on "Create dish"
  Then I should see a message saying "Successfully added a new dish"
