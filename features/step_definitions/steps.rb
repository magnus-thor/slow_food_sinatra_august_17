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

Given(/^There is a user called Thomas in our database$/) do
  User.create(username: "Thomas", password: "passw", confirm_password: "passw", email: "somewhere@some.com", phone_number: "1234556")
end
