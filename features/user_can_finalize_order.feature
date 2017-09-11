Feature: Finalize order
In order to get the food that I want and have added to my order
I would like to send in the order by clicking "Finalize order"

Background:
Given I visit the site
And There is a user called Thomas in our database
And I am logged in as Thomas
And there is a dish named "Carbonara" in our database
And its dish price is "120" in our database
And My order should contain 2 "Carbonara" item

Scenario:
Given I click "Finalize order"
Then I should see a message saying "Carbonara"
And I click on "Pay"
