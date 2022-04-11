class AddUntilToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :until, :date
  end
end
