Given(/^My order should contain (\d+) "([^"]*)" item$/) do |item_count, dish_name|
  dish = Dish.first(name: dish_name)
  user = User.first
  order = Order.create(user_id: user.id)
  order.add_item(dish, dish.price, item_count)
end

Given(/^I click "([^"]*)"$/) do |element|
dish = Dish.first(name: "Carbonara")
user = User.first
login_as(user)
@order = Order.create(user_id: user.id)
@order.add_item(dish, dish.price, 1)
  click_link_or_button element
end
