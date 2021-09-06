class AddColuntNameSurnameAddresToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :mane_users, :string
    add_column :orders, :surname_user, :string
    add_column :orders, :address, :string
  end
end
