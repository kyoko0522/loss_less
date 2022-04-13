class RemoveOrderIdFromOrderItem < ActiveRecord::Migration[5.2]
  def change
    remove_reference :order_items, :order_id, foreign_key: true
    remove_reference :order_items, :item_id, foreign_key: true
  end
end
