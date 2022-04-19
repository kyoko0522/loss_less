class RemoveAmountFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :amount, :integer
    remove_column :orders, :total_price, :integer
    remove_column :orders, :item_id, :integer
  end
end
