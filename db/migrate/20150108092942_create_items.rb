class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.string  :format
      t.integer :price_sell
      t.integer :weight
      t.integer :attack
      t.integer :defence
      t.integer :slots
      t.string  :jobs, default: "all"
      t.string  :genders, default: "both"
      t.integer :weapon_lvl
      t.boolean :refine
      t.string  :script
    end
  end
end