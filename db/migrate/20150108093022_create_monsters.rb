class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.string  :name
      t.integer :lvl
      t.integer :hp
      t.integer :sp
      t.integer :exp
      t.integer :jexp
      t.integer :atk
      t.integer :def
      t.integer :mdef
      t.integer :str
      t.integer :agi
      t.integer :vit
      t.integer :int
      t.integer :dex
      t.integer :luk
      t.integer :map_id
      t.string  :element
      t.integer :item_drop
      t.float :item_chance
      t.integer :equip_drop
      t.float :equip_chance
      t.integer :quest_drop
      t.float :quest_chance
      t.integer :card_drop
      t.float :card_chance
    end
  end
end