[Dish::SOUP, Dish::MAIN_DISH, Dish::BEVERAGE].each do |dish_type|
  20.times do
    Dish.create(
      name: Faker::Food.dish,
      dish_type: dish_type,
      price: Faker::Number.decimal(l_digits: 2, r_digits: 2)
    )
  end
end
MenuDays::WEEk_DAYS.each_value do |day|
  dishes = [
    Dish.soup.limit(rand(1..5)),
    Dish.main_dish.limit(rand(1..5)),
    Dish.beverage.limit(rand(1..5))
  ].flatten
  MenuDays.create(day: day, dishes: dishes)
end