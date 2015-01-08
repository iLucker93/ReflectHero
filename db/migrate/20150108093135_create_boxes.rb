class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.integer :user_id
      t.integer :item_id
      t.integer :ea
      t.string  :format
      t.integer :equip_locations
      t.integer :price

      t.timestamps
    end
  end
end