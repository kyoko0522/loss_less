class CreateReqests < ActiveRecord::Migration[5.2]
  def change
    create_table :reqests do |t|
      t.integer:amount
      t.integer:item_id

      t.timestamps
    end
  end
end
