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

ActiveRecord::Schema.define(version: 2019_06_03_221442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.boolean "helpdesk"
    t.string "zip_code"
    t.string "country"
    t.string "state"
    t.string "city"
    t.string "complement"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_addresses_on_client_id"
  end

  create_table "adverstise_histories", force: :cascade do |t|
    t.integer "rating"
    t.integer "status"
    t.boolean "paid"
    t.integer "grade"
    t.bigint "advertise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advertise_id"], name: "index_adverstise_histories_on_advertise_id"
  end

  create_table "advertises", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "release"
    t.datetime "end"
    t.float "price"
    t.integer "type"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_advertises_on_client_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categorizations_on_category_id"
    t.index ["client_id"], name: "index_categorizations_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "first_nickname"
    t.string "last_nickname"
    t.string "email"
    t.string "phone"
    t.string "cell_phone"
    t.date "birthday"
    t.integer "cpf"
    t.integer "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "clients"
  add_foreign_key "adverstise_histories", "advertises"
  add_foreign_key "advertises", "clients"
  add_foreign_key "categorizations", "categories"
  add_foreign_key "categorizations", "clients"
end
