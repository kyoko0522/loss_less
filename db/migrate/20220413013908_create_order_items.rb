class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.ç:item_id, foreign_key: true
      t.references :order_id, foreign_key: true
      t.integer :amount
      t.boolean :send_status
      t.timestamps
    end
  end
end
