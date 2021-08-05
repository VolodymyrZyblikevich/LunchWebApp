FactoryBot.define do
  factory :dish do
    name { Faker::Lorem.word}
    price { rand(20) }
    dish_type {[Dish::SOUP, Dish::MAIN, Dish::BEVARAGE].sample}
  end
end
