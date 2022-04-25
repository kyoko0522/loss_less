class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :amount
      t.boolean :send_status
      t.timestamps
    end
  end
end
