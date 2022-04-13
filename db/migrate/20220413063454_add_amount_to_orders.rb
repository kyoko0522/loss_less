class AddAmountToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :amount, :integer
    add_column :orders, :send_status, :boolean, default: false, null: false
  end
end
