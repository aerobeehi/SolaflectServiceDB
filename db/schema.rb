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

ActiveRecord::Schema.define(version: 20140822131952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: true do |t|
    t.string   "sn"
    t.string   "firmware"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "servicestatus", default: 1
  end

  create_table "boxes", force: true do |t|
    t.string   "sn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "board_id"
    t.integer  "servicestatus", default: 1
  end

  add_index "boxes", ["board_id"], name: "index_boxes_on_board_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fat_tests", force: true do |t|
    t.integer  "cfgfiles"
    t.integer  "rs422"
    t.integer  "sensorspacing_up"
    t.integer  "sensorspacing_az"
    t.integer  "sensorspacing_down"
    t.integer  "homing"
    t.string   "elrange"
    t.string   "elrepeat_status"
    t.string   "elrepeat_1"
    t.string   "elrepeat_2"
    t.string   "elrepeat_3"
    t.string   "elrepeat_4"
    t.string   "elrepeat_5"
    t.string   "elrepeat_6"
    t.string   "aztrack_status"
    t.string   "aztrack_tubecircum"
    t.string   "aztrack_meas1"
    t.string   "aztrack_time1"
    t.string   "aztrack_meas2"
    t.string   "aztrack_time2"
    t.integer  "anemometer"
    t.integer  "reworks"
    t.integer  "shipposition"
    t.integer  "batteryholdersecure"
    t.integer  "removeelmotorleads"
    t.integer  "user_id"
    t.integer  "machine_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fat_tests", ["machine_id"], name: "index_fat_tests_on_machine_id", using: :btree
  add_index "fat_tests", ["user_id"], name: "index_fat_tests_on_user_id", using: :btree

  create_table "logs", force: true do |t|
    t.text     "observation"
    t.datetime "observationdate"
    t.text     "action"
    t.datetime "actiondate"
    t.string   "location"
    t.integer  "personhours"
    t.string   "assignedtouser"
    t.string   "completedbyuser"
    t.integer  "status",          default: 1
    t.integer  "category",        default: 1
    t.integer  "logable_id"
    t.string   "logable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["assignedtouser"], name: "index_logs_on_assignedtouser", using: :btree
  add_index "logs", ["completedbyuser"], name: "index_logs_on_completedbyuser", using: :btree
  add_index "logs", ["logable_id", "logable_type"], name: "index_logs_on_logable_id_and_logable_type", using: :btree

  create_table "machines", force: true do |t|
    t.string   "sn"
    t.string   "box_id"
    t.string   "location"
    t.integer  "servicestatus", default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "machines", ["box_id"], name: "index_machines_on_box_id", using: :btree

  create_table "sites", force: true do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "sitestatus"
    t.string   "machine_id"
    t.string   "sitename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["machine_id"], name: "index_sites_on_machine_id", using: :btree
  add_index "sites", ["sitename"], name: "index_sites_on_sitename", using: :btree

  create_table "users", force: true do |t|
    t.string   "user_id"
    t.string   "email",                  default: "", null: false
    t.string   "firstname",              default: "", null: false
    t.string   "lastname",               default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
