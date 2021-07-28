class AddColumnPriceToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :price, :decimal, precision: 2, scale: 2
  end
end
