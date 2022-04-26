class AddIsAvailableToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :is_available, :boolean, default: true, null: false
  end
end
