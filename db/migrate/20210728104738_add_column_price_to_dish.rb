class AddColumnPriceToDish < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :price, :decimal, precision: 2, scale: 2
  end
end
