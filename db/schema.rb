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

ActiveRecord::Schema.define(version: 2020_09_05_235115) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.integer "gender", null: false
    t.date "birth", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_children_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "reservation_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reservation_id"], name: "index_comments_on_reservation_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "relation", limit: 255, null: false
    t.string "phone_number", limit: 11, null: false
    t.string "postal_code", limit: 7, null: false
    t.string "prefecture", limit: 255, null: false
    t.string "city", limit: 255, null: false
    t.string "adress", limit: 255, null: false
    t.string "building", limit: 255
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "other_relation", limit: 255
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "daycares", force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "phone_number", limit: 11, null: false
    t.string "postal_code", limit: 7, null: false
    t.string "prefecture", limit: 255, null: false
    t.string "city", limit: 255, null: false
    t.string "adress", limit: 255, null: false
    t.string "building", limit: 255
    t.integer "capacity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", force: :cascade do |t|
    t.string "family_name", limit: 255, null: false
    t.string "first_name", limit: 255, null: false
    t.string "family_name_kana", limit: 255, null: false
    t.string "first_name_kana", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "child_id"
    t.bigint "contact_id"
    t.index ["child_id"], name: "index_names_on_child_id"
    t.index ["contact_id"], name: "index_names_on_contact_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "date", null: false
    t.integer "reason", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "daycare_id"
    t.bigint "user_id"
    t.string "daycare_to_use", null: false
    t.index ["daycare_id"], name: "index_reservations_on_daycare_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "user_type", default: 0, null: false
    t.boolean "admin", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "children", "users"
  add_foreign_key "comments", "reservations"
  add_foreign_key "contacts", "users"
  add_foreign_key "names", "children"
  add_foreign_key "names", "contacts"
  add_foreign_key "reservations", "daycares"
  add_foreign_key "reservations", "users"
end
