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

ActiveRecord::Schema.define(version: 20140417005103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomodations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "last_dorm"
    t.string   "last_room"
    t.string   "is_continuity"
    t.string   "is_social"
    t.string   "dorm_pref_1"
    t.string   "dorm_pref_2"
    t.string   "dorm_pref_3"
    t.string   "roommate_pref"
    t.string   "state"
    t.integer  "user_id"
  end

  create_table "documents", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "accomodation_id"
  end

  add_index "documents", ["accomodation_id"], name: "index_documents_on_accomodation_id", using: :btree

  create_table "dorms", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "dorms_categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number"
  end

  create_table "user_sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.float    "score"
    t.string   "token"
    t.string   "email"
    t.string   "is_student"
    t.string   "is_teacher"
    t.string   "is_management"
    t.string   "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date_birth"
    t.string   "place_birth"
    t.string   "father_first_name"
    t.string   "mother_first_name"
    t.string   "ic_serie"
    t.string   "ic_number"
    t.string   "address"
    t.string   "cnp"
    t.string   "specialization"
    t.string   "year"
    t.string   "last_dorm"
    t.string   "last_room"
  end

end
