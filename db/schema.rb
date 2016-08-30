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

ActiveRecord::Schema.define(version: 20160830170441) do

  create_table "customers", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "authentication_token"
    t.string   "name"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "phone_number"
    t.boolean  "verified",               default: false
    t.text     "image"
    t.string   "city"
  end

  add_index "customers", ["authentication_token"], name: "index_customers_on_authentication_token", unique: true
  add_index "customers", ["email"], name: "index_customers_on_email", unique: true
  add_index "customers", ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true

  create_table "merchants", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "authentication_token"
    t.string   "name"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "phone_number"
    t.boolean  "verified",               default: false
    t.text     "image"
    t.string   "city"
  end

  add_index "merchants", ["authentication_token"], name: "index_merchants_on_authentication_token", unique: true
  add_index "merchants", ["email"], name: "index_merchants_on_email", unique: true
  add_index "merchants", ["reset_password_token"], name: "index_merchants_on_reset_password_token", unique: true

end