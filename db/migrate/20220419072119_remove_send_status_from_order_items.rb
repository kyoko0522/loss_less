class RemoveSendStatusFromOrderItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_items, :send_status, :boolean
  end
end
