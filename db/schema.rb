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

ActiveRecord::Schema.define(version: 20170520080151) do

  create_table "case_clients", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "status_id"
    t.string   "cnr_no"
    t.integer  "cort_id"
    t.integer  "case_type_id"
    t.string   "case_no"
    t.integer  "type_of_client_id"
    t.integer  "type_of_opposition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "client_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "mobile"
    t.string   "name"
    t.string   "email"
    t.text     "address"
    t.string   "city"
    t.integer  "district_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "court_complexes", force: :cascade do |t|
    t.string   "name"
    t.string   "court_complex_id"
    t.integer  "district_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "courts", force: :cascade do |t|
    t.integer  "court_complex_id"
    t.string   "name"
    t.string   "court_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.integer  "state_id"
    t.string   "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oppositions", force: :cascade do |t|
    t.string   "advocate"
    t.string   "mobile"
    t.string   "name"
    t.string   "email"
    t.text     "address"
    t.string   "city"
    t.integer  "district_id"
    t.integer  "case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postings", force: :cascade do |t|
    t.date     "posting_date"
    t.text     "bussness"
    t.text     "short_order"
    t.integer  "previous_posting_id"
    t.text     "posting_purpose"
    t.integer  "case_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
