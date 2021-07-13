class AddTypeToDishes < ActiveRecord::Migration[6.1]
  def change
    add_column :dishes, :type, :string

  end
end
