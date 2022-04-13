class RemoveAmountFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :amount, :integer
    remove_column :orders, :send_status, :boolean
  end
end
