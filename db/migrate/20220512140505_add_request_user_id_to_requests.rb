class AddRequestUserIdToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :request_user_id, :integer
    add_column :requests, :requested_user_id, :integer
    add_column :requests, :checked, :boolean, default: false, null: false
  end
end
