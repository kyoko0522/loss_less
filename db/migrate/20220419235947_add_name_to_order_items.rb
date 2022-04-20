class AddNameToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :name, :string
    add_column :order_items, :code, :string
    add_column :order_items, :image_id, :string
    add_column :order_items, :notice, :string
    add_column :order_items, :price, :integer
    add_column :order_items, :until, :date
  end
end
