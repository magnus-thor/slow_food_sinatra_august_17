Given(/^I visit the site$/) do
  visit '/'
end

Then(/^I should see a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Given(/^there is a dish named "([^"]*)" in our database$/) do |dish_name|
  Dish.create(name: dish_name)
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |input_field, value |
  fill_in(input_field, :with => value)
end

Given(/^I click on "([^"]*)"$/) do |element|
  click_link_or_button element
end

Then(/^I should see message "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

And(/^I fill in all the fields$/) do
  steps %q{
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "mypassword"
    And I fill in "Confirm Password" with "mypassword"
    And I fill in "E-mail" with "andreademoja@gmail.com"
    And I fill in "Phone number" with "1234567890"
  }
end

And(/^I leave all the fields empty$/) do
  steps %q{
    And I fill in "Username" with ""
    And I fill in "Password" with ""
    And I fill in "Confirm Password" with ""
    And I fill in "E-mail" with ""
    And I fill in "Phone number" with ""
  }
end

And(/^I give wrong password in confirmation$/) do
  steps %q{
    And I fill in "Username" with "Thomas"
    And I fill in "Password" with "mypassword"
    And I fill in "Confirm Password" with "notmypassword"
    And I fill in "E-mail" with "andreademoja@gmail.com"
    And I fill in "Phone number" with "1234567890"
  }
end

And(/^The email address is already registered$/) do
  User.create(username: "Gianni", password: "passw", confirm_password: "passw", email: "andreademoja@gmail.com", phone_number: "1234556")
end

Given(/^There is a user called Thomas in our database$/) do
  User.create(username: "Thomas", password: "passw", confirm_password: "passw", email: "somewhere@some.com", phone_number: "1234556")
end
