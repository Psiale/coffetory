# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_23_051952) do

  create_table "coffee_shops", force: :cascade do |t|
    t.string "name"
    t.text "avatar"
    t.integer "owner_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_id"], name: "index_coffee_shops_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "cost"
    t.integer "coffee_shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_shop_id"], name: "index_products_on_coffee_shop_id"
  end

  create_table "products_raw_materials", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "raw_material_id", null: false
    t.index ["product_id"], name: "index_products_raw_materials_on_product_id"
    t.index ["raw_material_id"], name: "index_products_raw_materials_on_raw_material_id"
  end

  create_table "raw_materials", force: :cascade do |t|
    t.string "name"
    t.float "total_amount"
    t.float "remaining_amount"
    t.integer "coffee_shop_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coffee_shop_id"], name: "index_raw_materials_on_coffee_shop_id"
  end

  add_foreign_key "coffee_shops", "owners"
  add_foreign_key "products", "coffee_shops"
  add_foreign_key "raw_materials", "coffee_shops"
end
