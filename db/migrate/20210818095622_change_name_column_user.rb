class ChangeNameColumnUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :name, :first_name
    rename_column :users, :surname, :second_name
    rename_column :orders, :mane_users, :first_name_for_order
    rename_column :orders, :surname_user, :second_name_for_order

  end
end
