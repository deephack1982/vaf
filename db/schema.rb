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

ActiveRecord::Schema.define(version: 20170219161617) do

  create_table "action_reports", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "pilot_id"
    t.integer  "airframe_id"
    t.integer  "tasking_id"
    t.float    "hours",       limit: 24
    t.integer  "takeoffs"
    t.integer  "landings"
    t.string   "outcome"
    t.integer  "aa_kills"
    t.integer  "ag_kills"
    t.text     "notes",       limit: 65535
    t.string   "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "position"
    t.index ["airframe_id"], name: "index_action_reports_on_airframe_id", using: :btree
    t.index ["pilot_id"], name: "index_action_reports_on_pilot_id", using: :btree
    t.index ["tasking_id"], name: "index_action_reports_on_tasking_id", using: :btree
  end

  create_table "airfields", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "airfield_type"
    t.string   "ATC_channel"
    t.string   "ATIS_channel"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "airframe_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "callsign"
    t.string   "category"
    t.decimal  "cost",               precision: 10
    t.decimal  "maintenance_hours",  precision: 10
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "airframes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "airframe_type_id"
    t.string   "tail_number"
    t.string   "location"
    t.integer  "squadron_id"
    t.float    "hours",            limit: 24
    t.string   "condition"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["airframe_type_id"], name: "index_airframes_on_airframe_type_id", using: :btree
    t.index ["squadron_id"], name: "index_airframes_on_squadron_id", using: :btree
  end

  create_table "joining_forms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer  "age"
    t.boolean  "english_proficiency"
    t.boolean  "available"
    t.string   "software"
    t.integer  "years_experience"
    t.string   "interests"
    t.text     "notes",               limit: 65535
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "pilot_id"
    t.index ["pilot_id"], name: "index_joining_forms_on_pilot_id", using: :btree
  end

  create_table "joining_forms_softwares", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "software_id",     null: false
    t.integer "joining_form_id", null: false
  end

  create_table "missions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "title"
    t.date     "date"
    t.time     "start_time"
    t.text     "body",       limit: 65535
    t.integer  "channel"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pilots", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "rank"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "squadron_id"
    t.string   "password_digest"
    t.boolean  "admin"
    t.string   "callsign"
    t.string   "country"
    t.index ["squadron_id"], name: "index_pilots_on_squadron_id", using: :btree
  end

  create_table "pilots_qualifications", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "pilot_id"
    t.integer "qualification_id"
    t.index ["pilot_id"], name: "index_pilots_qualifications_on_pilot_id", using: :btree
    t.index ["qualification_id"], name: "index_pilots_qualifications_on_qualification_id", using: :btree
  end

  create_table "qualifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "tag"
    t.string   "name"
    t.text     "description",        limit: 65535
    t.string   "patch_file_name"
    t.string   "patch_content_type"
    t.integer  "patch_file_size"
    t.datetime "patch_updated_at"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "softwares", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.boolean  "required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "squadrons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "name"
    t.string   "aircraft"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "airfield_id"
    t.string   "badge_file_name"
    t.string   "badge_content_type"
    t.integer  "badge_file_size"
    t.datetime "badge_updated_at"
    t.index ["airfield_id"], name: "index_squadrons_on_airfield_id", using: :btree
  end

  create_table "taskings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string   "callsign"
    t.integer  "mission_id"
    t.integer  "airframe_type_id"
    t.integer  "number"
    t.string   "tasking_type"
    t.text     "notes",             limit: 65535
    t.integer  "channel"
    t.integer  "primary_base_id"
    t.integer  "alternate_base_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["airframe_type_id"], name: "index_taskings_on_airframe_type_id", using: :btree
    t.index ["mission_id"], name: "index_taskings_on_mission_id", using: :btree
  end

  add_foreign_key "action_reports", "airframes"
  add_foreign_key "action_reports", "pilots"
  add_foreign_key "action_reports", "taskings"
  add_foreign_key "airframes", "airframe_types"
  add_foreign_key "airframes", "squadrons"
  add_foreign_key "joining_forms", "pilots"
  add_foreign_key "pilots", "squadrons"
  add_foreign_key "squadrons", "airfields"
  add_foreign_key "taskings", "airframe_types"
  add_foreign_key "taskings", "missions"
end
