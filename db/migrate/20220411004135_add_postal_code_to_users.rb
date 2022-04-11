class AddPostalCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postal_code, :string
    add_column :users, :address, :string
    add_column :users, :telephone_number, :string
    add_column :users, :item_id, :string
    add_column :users, :order_id, :string
  end
end
