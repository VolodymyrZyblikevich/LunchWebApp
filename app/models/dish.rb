class Dish < ApplicationRecord
  # scope by_name order(:type )
  has_many :ordered_soups, class_name: Order.name, foreign_key: 'soup_id'
  has_many :ordered_main_dishes, class_name: Order.name, foreign_key: 'main_dish_id'
  has_many :ordered_beverages, class_name: Order.name, foreign_key: 'beverage_id'
  has_and_belongs_to_many :menu_days

  validate :price, presicion


  enum dish_type: {
    soup: SOUP = 'soup',
    main_dish: MAIN_DISH = 'main',
    beverage: BEVERAGE = 'beverage'
  }

  scope :soups,-> { where(dish_type: :soup) }
  scope :main_dishes,-> { where(dish_type: :main_dish) }
  scope :beverages,-> { where(dish_type: :beverage) }


end
