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

ActiveRecord::Schema.define(version: 2019_10_07_151021) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: :cascade do |t|
    t.integer "budget", null: false
    t.date "begining", null: false
    t.date "ending", null: false
    t.bigint "budgets_id"
    t.bigint "outcome_item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budgets_id"], name: "index_budgets_on_budgets_id"
    t.index ["outcome_item_id"], name: "index_budgets_on_outcome_item_id"
  end

  create_table "income_items", force: :cascade do |t|
    t.text "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "amounts", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "income_item_id"
    t.text "note"
    t.bigint "user_id"
    t.index ["income_item_id"], name: "index_incomes_on_income_item_id"
    t.index ["user_id"], name: "index_incomes_on_user_id"
  end

  create_table "outcome_items", force: :cascade do |t|
    t.text "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outcomes", force: :cascade do |t|
    t.integer "amounts", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "outcome_item_id"
    t.text "note"
    t.bigint "user_id"
    t.index ["outcome_item_id"], name: "index_outcomes_on_outcome_item_id"
    t.index ["user_id"], name: "index_outcomes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.text "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "budgets", "budgets", column: "budgets_id"
  add_foreign_key "budgets", "outcome_items"
  add_foreign_key "incomes", "income_items"
  add_foreign_key "incomes", "users"
  add_foreign_key "outcomes", "outcome_items"
  add_foreign_key "outcomes", "users"
end
