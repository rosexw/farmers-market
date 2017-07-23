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

ActiveRecord::Schema.define(version: 20170720163921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farmer_markets", force: :cascade do |t|
    t.integer  "market_id"
    t.integer  "farmer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_id"], name: "index_farmer_markets_on_farmer_id", using: :btree
    t.index ["market_id"], name: "index_farmer_markets_on_market_id", using: :btree
  end

  create_table "farmers", force: :cascade do |t|
    t.string   "farm_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "website_link"
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "description"
    t.string   "phone_no"
  end

  create_table "farmers_products", force: :cascade do |t|
    t.integer  "farmer_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_id"], name: "index_farmers_products_on_farmer_id", using: :btree
    t.index ["product_id"], name: "index_farmers_products_on_product_id", using: :btree
  end

  create_table "markets", force: :cascade do |t|
    t.string   "name"
    t.string   "website_link"
    t.string   "image"
    t.string   "address"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.text     "description"
    t.string   "time_open"
    t.string   "days_open"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "products", force: :cascade do |t|
    t.text     "product_name"
    t.text     "product_type"
    t.boolean  "on_hand"
    t.boolean  "organic"
    t.boolean  "non_gmo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "farmer_markets", "farmers"
  add_foreign_key "farmer_markets", "markets"
  add_foreign_key "farmers_products", "farmers"
  add_foreign_key "farmers_products", "products"
end
