# frozen_string_literal: true
class Dish < ApplicationRecord
  # scope by_name order(:type )
  belongs_to :user
  enum type: {
    main_dish: main_dish = 'main',
    soup: soup = 'soup',
    behavior: behavior = 'behavior'
  }
end
