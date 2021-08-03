class CreateMenuDays < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_days do |t|
      t.integer :day

      t.timestamps
    end
  end
end
