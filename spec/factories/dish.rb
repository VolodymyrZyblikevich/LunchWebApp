FactoryBot.define do
  factory :dish do
    name { Faker::Lorem.word}
    price { rand(20) }
    dish_type { rand(1..3) }
  end
end
