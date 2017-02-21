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

ActiveRecord::Schema.define(version: 20170221151815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "username"
    t.text     "description"
    t.string   "street"
    t.string   "zipcode"
    t.string   "city"
    t.string   "country"
    t.string   "phone"
    t.string   "siret"
    t.string   "email"
    t.string   "website"
    t.integer  "domain_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["domain_id"], name: "index_artists_on_domain_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "domains", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "format"
    t.integer  "artist_id"
    t.integer  "stock_quantity"
    t.integer  "rating_avg"
    t.text     "description"
    t.integer  "material_id"
    t.integer  "category_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "product_price_cents",  default: 0, null: false
    t.integer  "delivery_price_cents", default: 0, null: false
    t.index ["artist_id"], name: "index_products_on_artist_id", using: :btree
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["material_id"], name: "index_products_on_material_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.integer  "rating"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id", using: :btree
  end

  add_foreign_key "artists", "domains"
  add_foreign_key "products", "artists"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "materials"
  add_foreign_key "reviews", "products"
end
