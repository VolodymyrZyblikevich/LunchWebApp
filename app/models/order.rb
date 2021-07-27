# frozen_string_literal: true
class Order < ApplicationRecord
  belongs_to :user
  belongs_to :soup, class_name: Dish.name, foreign_key: :soup_id
  belongs_to :main_dish, class_name: Dish.name, foreign_key: :main_dish_id
  belongs_to :beverage, class_name: Dish.name, foreign_key: :beverage_id
end
