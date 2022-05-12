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

ActiveRecord::Schema.define(version: 2022_05_12_140505) do

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.string "notice"
    t.integer "price"
    t.integer "amount"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.date "until"
    t.boolean "is_available", default: true, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item_id"
    t.integer "order_id"
    t.string "name"
    t.string "code"
    t.string "image_id"
    t.string "notice"
    t.integer "price"
    t.date "until"
    t.index ["item_id"], name: "index_order_items_on_item_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "ordered_user_id"
    t.integer "order_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "send_status", default: false, null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "amount"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "request_user_id"
    t.integer "requested_user_id"
    t.boolean "checked", default: false, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "postal_code"
    t.string "address"
    t.string "telephone_number"
    t.string "item_id"
    t.string "order_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
