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

ActiveRecord::Schema.define(version: 2018_12_12_012655) do

  create_table "friends", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods", force: :cascade do |t|
    t.string "receiver_name"
    t.text "receiver_address"
    t.string "receiver_phone"
    t.string "sender_name"
    t.text "sender_address"
    t.string "sender_phone"
    t.float "mass"
    t.string "pay_id"
    t.integer "pay_type"
    t.integer "who_pay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.text "side_provinces"
    t.integer "special_num"
    t.float "special_flat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "passwd"
    t.string "phone"
    t.integer "sex"
    t.text "address"
    t.text "friends"
    t.integer "province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
