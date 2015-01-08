
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :gender
      t.string :job
      t.string :bio
      t.string :location, default: 'new_zone03'
      t.integer :lvl, default: 1
      t.integer :exp, default: 0
      t.integer :next, default: 660
      t.integer :hp, default: 40
      t.integer :sp, default: 11
      t.integer :statpoint, default: 24
      t.integer :zeny, default: 1000
      t.integer :str, default: 1
      t.integer :agi, default: 1
      t.integer :vit, default: 1
      t.integer :int, default: 1
      t.integer :dex, default: 1
      t.integer :luk, default: 1

      t.timestamps
    end
  end
end