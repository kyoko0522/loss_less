class ChangeReqestsToRequests < ActiveRecord::Migration[5.2]
  def change
    rename_table :reqests, :requests
  end
end
