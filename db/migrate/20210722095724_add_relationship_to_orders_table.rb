class AddRelationshipToOrdersTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :user, index: true
    add_column  :orders, :soup_id, :integer
    add_column  :orders, :main_dish_id, :integer
    add_column  :orders, :beverage_id, :integer
  end
end
