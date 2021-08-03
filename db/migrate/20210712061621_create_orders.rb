class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.decimal :price, precision: 5, scale: 2
      t.string :name

      t.timestamps
    end
  end
end
