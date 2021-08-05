FactoryBot.define do
  factory :menu_days do
    dishes { nil }
    day { WEEK_DAYS }
  end
end
