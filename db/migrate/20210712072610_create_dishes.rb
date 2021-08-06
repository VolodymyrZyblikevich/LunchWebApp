class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 2
      t.string :dish_type

      t.timestamps
    end
  end
end
