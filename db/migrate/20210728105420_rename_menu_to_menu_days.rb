class RenameMenuToMenuDays < ActiveRecord::Migration[6.1]
  def change
    rename_table :menus, :menu_days
  end
end
