Given(/^There are "([^"]*)" "([^"]*)" in our order$/) do |item_count, dish_name|
  dish = Dish.first(name: dish_name)
  within "#dish_#{dish.id}" do
    fill_in 'quantity', with: item_count
    click_link_or_button 'Add'
  end
end

Given(/^I click "([^"]*)" "([^"]*)"$/) do |button, dish_name|
  dish = Dish.first(name: dish_name)
  within("#dish_#{dish.id}") do
    click_link_or_button button
  end
end
