# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150108093135) do

  create_table "boxes", force: true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.integer  "ea"
    t.string   "format"
    t.integer  "equip_locations"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string  "name"
    t.string  "format"
    t.integer "price_sell"
    t.integer "weight"
    t.integer "attack"
    t.integer "defence"
    t.integer "slots"
    t.string  "jobs",       default: "all"
    t.string  "genders",    default: "both"
    t.integer "weapon_lvl"
    t.boolean "refine"
    t.string  "script"
  end

  create_table "maps", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "monsters", force: true do |t|
    t.string  "name"
    t.integer "lvl"
    t.integer "hp"
    t.integer "exp"
    t.integer "jexp"
    t.integer "atk"
    t.integer "def"
    t.integer "mdef"
    t.integer "str"
    t.integer "agi"
    t.integer "vit"
    t.integer "int"
    t.integer "dex"
    t.integer "luk"
    t.integer "map_id"
    t.string  "element"
    t.integer "item_drop"
    t.float   "item_chance",  limit: 24
    t.integer "equip_drop"
    t.float   "equip_chance", limit: 24
    t.integer "quest_drop"
    t.float   "quest_chance", limit: 24
    t.integer "card_drop"
    t.float   "card_chance",  limit: 24
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "gender"
    t.string   "job"
    t.string   "bio"
    t.string   "location",               default: "new_zone03"
    t.integer  "lvl",                    default: 1
    t.integer  "exp",                    default: 0
    t.integer  "next",                   default: 660
    t.integer  "hp",                     default: 40
    t.integer  "sp",                     default: 11
    t.integer  "statpoint",              default: 24
    t.integer  "zeny",                   default: 1000
    t.integer  "str",                    default: 1
    t.integer  "agi",                    default: 1
    t.integer  "vit",                    default: 1
    t.integer  "int",                    default: 1
    t.integer  "dex",                    default: 1
    t.integer  "luk",                    default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",           null: false
    t.string   "encrypted_password",     default: "",           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
