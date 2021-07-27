# frozen_string_literal: true
class Dish < ApplicationRecord
  # scope by_name order(:type )
  has_many :ordered_soups, class_name: Order.name, foreign_key: 'soup_id'
  has_many :ordered_main_dishes, class_name: Order.name, foreign_key: 'main_dish_id'
  has_many :ordered_beverages, class_name: Order.name, foreign_key: 'beverage_id'

  enum dish_type: {
    soup: SOUP = 'soup',
    main_dish: MAIN_DISH = 'main',
    beverage: BEVERAGE = 'beverage'
  }
end
