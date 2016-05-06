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

ActiveRecord::Schema.define(version: 20160428193656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "description"
    t.integer  "calories"
    t.integer  "grams_per_serving"
    t.float    "fat_sat"
    t.float    "fat_mono"
    t.float    "fat_poly"
    t.float    "carbs"
    t.float    "sugar"
    t.float    "protein"
    t.float    "fiber"
    t.integer  "sodium"
    t.integer  "choles"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "meal_items", force: :cascade do |t|
    t.integer  "serv_qty"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "food_for_meal_id"
    t.integer  "user_meal_id"
  end

  add_index "meal_items", ["food_for_meal_id"], name: "index_meal_items_on_food_for_meal_id", using: :btree
  add_index "meal_items", ["user_meal_id"], name: "index_meal_items_on_user_meal_id", using: :btree

  create_table "meals", force: :cascade do |t|
    t.string   "meal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "meals", ["user_id"], name: "index_meals_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "meal_items", "foods", column: "food_for_meal_id"
  add_foreign_key "meal_items", "meals", column: "user_meal_id"
  add_foreign_key "meals", "users"
end
