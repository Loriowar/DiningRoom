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

ActiveRecord::Schema.define(version: 20140407075145) do

  create_table "appointments", force: true do |t|
    t.string  "name"
    t.decimal "salary", precision: 10, scale: 0
  end

  create_table "available_foodstuff", force: true do |t|
    t.date    "date"
    t.integer "foodstuff_id"
  end

  create_table "cashbox", force: true do |t|
    t.integer "employee_id"
    t.date    "date"
    t.decimal "profit",      precision: 10, scale: 0
  end

  create_table "cheques", force: true do |t|
    t.integer  "cheque_id"
    t.integer  "dish_id"
    t.datetime "created_at"
  end

  create_table "clients", force: true do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "patronymic_name"
    t.string "contact_phone",   limit: 30
  end

  create_table "complaints", force: true do |t|
    t.string  "theme"
    t.string  "description", limit: 3000
    t.integer "client_id"
  end

  create_table "daily_earnings", id: false, force: true do |t|
    t.decimal "daily_earning", precision: 32, scale: 0
    t.date    "date"
  end

  create_table "dish_mixtures", force: true do |t|
    t.integer "dish_id"
    t.integer "foodstuff_id"
  end

  create_table "dish_types", force: true do |t|
    t.string "name"
  end

  create_table "dishes", force: true do |t|
    t.string  "name"
    t.integer "calories"
    t.integer "weight"
    t.integer "dish_type_id"
  end

  create_table "employees", force: true do |t|
    t.string  "last_name"
    t.string  "first_name"
    t.string  "patronymic_name"
    t.date    "d_hiring"
    t.integer "appointment_id"
  end

  create_table "foodstuff", force: true do |t|
    t.string   "name"
    t.datetime "d_created"
  end

  create_table "history_employees", force: true do |t|
    t.integer  "employee_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "patronymic_name"
    t.date     "d_hiring"
    t.integer  "appointment_id"
    t.string   "event"
    t.datetime "created_at"
  end

  create_table "menu", force: true do |t|
    t.integer "dish_id"
    t.date    "date"
    t.decimal "price",   precision: 10, scale: 0
  end

  create_table "production_plans", force: true do |t|
    t.date    "d_execution"
    t.integer "dish_id"
    t.integer "amount"
  end

  create_table "providers", force: true do |t|
    t.date   "d_start_cooperation"
    t.string "name"
    t.string "address",             limit: 500
    t.string "phone",               limit: 30
    t.string "payment_account",     limit: 60
  end

  create_table "supplies", force: true do |t|
    t.integer "provider_id"
    t.integer "foodstuff_id"
    t.date    "d_delivery"
    t.integer "amount"
  end

end
