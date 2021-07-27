class RenameTypeToDishType < ActiveRecord::Migration[6.1]
  def change
    rename_column :dishes, :type, :dish_type
  end
end
