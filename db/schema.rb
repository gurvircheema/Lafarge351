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

ActiveRecord::Schema.define(version: 20141116210114) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hazards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logins", force: true do |t|
    t.integer  "site_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "loggable_id"
    t.string   "loggable_type"
  end

  create_table "orientation_hazards", force: true do |t|
    t.integer  "orientation_id"
    t.integer  "hazard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orientations", force: true do |t|
    t.string   "comment"
    t.integer  "site_id"
    t.integer  "worker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_hazards", force: true do |t|
    t.integer  "site_id"
    t.integer  "hazard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "name"
    t.integer  "manager_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "workers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "contact"
    t.string   "email"
    t.string   "type"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
