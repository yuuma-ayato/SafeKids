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

ActiveRecord::Schema.define(version: 2020_08_20_070514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "children", force: :cascade do |t|
    t.integer "gender", null: false
    t.string "other_gender", limit: 255
    t.date "birth", null: false
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_informations", force: :cascade do |t|
    t.integer "relation", null: false
    t.string "other_relation"
    t.string "phone_number", limit: 11, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  create_table "parents", force: :cascade do |t|
    t.integer "relation", null: false
    t.string "other_relation", limit: 255
    t.string "phone_number", limit: 11, null: false
    t.string "postal_code", limit: 7, null: false
    t.string "prefecture", limit: 255, null: false
    t.string "city", limit: 255, null: false
    t.string "adress", limit: 255, null: false
    t.string "building", limit: 255
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "family_name", limit: 255, null: false
    t.string "first_name", limit: 255, null: false
    t.string "family_name_kana", limit: 255, null: false
    t.string "first_name_kana", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_id"
    t.bigint "child_id"
    t.bigint "contact_information_id"
    t.index ["child_id"], name: "index_people_on_child_id"
    t.index ["contact_information_id"], name: "index_people_on_contact_information_id"
    t.index ["parent_id"], name: "index_people_on_parent_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "date", null: false
    t.integer "reason", null: false
    t.string "other_reason", limit: 255
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.integer "kind", default: 0, null: false
    t.boolean "admin", default: false, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "people", "children"
  add_foreign_key "people", "contact_informations"
  add_foreign_key "people", "parents"
end
