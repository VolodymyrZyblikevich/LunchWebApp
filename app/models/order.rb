# frozen_string_literal: true
class Order < ApplicationRecord
  has_many :dishes, -> { where(type: %i[main_dish soup behavior]) }, class_name: 'Dish'
end
