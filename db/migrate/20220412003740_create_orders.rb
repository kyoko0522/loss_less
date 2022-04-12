class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :item_id
      t.integer :ordered_user_id
      t.integer :order_user_id
      t.integer :amount
      t.boolean :send_status

      t.timestamps
    end
  end
end
