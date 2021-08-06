FactoryBot.define do
  factory :dish do
    name { Faker::Lorem.word }
    price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    dish_type { [Dish::SOUP, Dish::MAIN_DISH, Dish::BEVARAGE].sample }
  end
end
