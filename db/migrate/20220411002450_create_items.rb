class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string:name
      t.string:image_id
      t.string:notice
      t.integer:price
      t.integer:amount
      t.string:code   
      t.timestamps
    end
  end
end
