class RemoveImageFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :image, :string
  end
end
