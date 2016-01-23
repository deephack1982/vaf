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

ActiveRecord::Schema.define(version: 20160123190345) do

  create_table "airfields", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "airfield_type", limit: 255
    t.string   "ATC_channel",   limit: 255
    t.string   "ATIS_channel",  limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "airframe_types", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.string   "callsign",          limit: 255
    t.string   "category",          limit: 255
    t.decimal  "cost",                          precision: 10
    t.decimal  "maintenance_hours",             precision: 10
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  create_table "airframes", force: :cascade do |t|
    t.integer  "airframe_type_id", limit: 4
    t.string   "tail_number",      limit: 255
    t.string   "location",         limit: 255
    t.integer  "squadron_id",      limit: 4
    t.decimal  "hours",                        precision: 10
    t.string   "condition",        limit: 255
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "airframes", ["airframe_type_id"], name: "index_airframes_on_airframe_type_id", using: :btree
  add_index "airframes", ["squadron_id"], name: "index_airframes_on_squadron_id", using: :btree

  create_table "missions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.date     "date"
    t.time     "start_time"
    t.text     "body",       limit: 65535
    t.integer  "channel",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pilots", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "email",       limit: 255
    t.string   "rank",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "squadron_id", limit: 4
  end

  add_index "pilots", ["squadron_id"], name: "index_pilots_on_squadron_id", using: :btree

  create_table "squadrons", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "aircraft",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "airfield_id", limit: 4
  end

  add_index "squadrons", ["airfield_id"], name: "index_squadrons_on_airfield_id", using: :btree

  create_table "taskings", force: :cascade do |t|
    t.string   "callsign",          limit: 255
    t.integer  "mission_id",        limit: 4
    t.integer  "airframe_type_id",  limit: 4
    t.integer  "number",            limit: 4
    t.string   "tasking_type",      limit: 255
    t.text     "notes",             limit: 65535
    t.integer  "channel",           limit: 4
    t.integer  "primary_base_id",   limit: 4
    t.integer  "alternate_base_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "taskings", ["airframe_type_id"], name: "index_taskings_on_airframe_type_id", using: :btree
  add_index "taskings", ["mission_id"], name: "index_taskings_on_mission_id", using: :btree

  add_foreign_key "airframes", "airframe_types"
  add_foreign_key "airframes", "squadrons"
  add_foreign_key "pilots", "squadrons"
  add_foreign_key "squadrons", "airfields"
  add_foreign_key "taskings", "airframe_types"
  add_foreign_key "taskings", "missions"
end
