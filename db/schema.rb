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

ActiveRecord::Schema.define(version: 20170622074737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true, using: :btree
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree

  create_table "accounts_roles", id: false, force: :cascade do |t|
    t.integer "account_id"
    t.integer "role_id"
  end

  add_index "accounts_roles", ["account_id", "role_id"], name: "index_accounts_roles_on_account_id_and_role_id", using: :btree

  create_table "alumnis", force: :cascade do |t|
    t.string   "full_name"
    t.string   "nickname"
    t.string   "birth_place"
    t.text     "address_origin"
    t.text     "address_domicile"
    t.integer  "sex"
    t.string   "occupation"
    t.string   "cellphone"
    t.string   "bbm"
    t.string   "facebook"
    t.string   "website"
    t.string   "line_id"
    t.string   "twitter"
    t.string   "youtube"
    t.integer  "account_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "nim"
    t.date     "dob"
  end

  create_table "colleges", force: :cascade do |t|
    t.integer  "join_year"
    t.string   "basic_training"
    t.string   "intermediate_training"
    t.string   "advanced_training"
    t.string   "senior_course"
    t.string   "commissariat"
    t.string   "korkom"
    t.string   "branch"
    t.string   "badko"
    t.string   "pb"
    t.integer  "alumni_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "field"
    t.text     "address"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donates", force: :cascade do |t|
    t.decimal  "amount"
    t.string   "file_transfer"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "name"
    t.string   "major"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "father_name"
    t.string   "father_birthplace"
    t.date     "father_dob"
    t.string   "father_last_education"
    t.string   "father_occupation"
    t.text     "father_address"
    t.string   "mother_name"
    t.string   "mother_birthplace"
    t.string   "mother_last_education"
    t.string   "mother_occupation"
    t.text     "mother_address"
    t.integer  "number_of_sibling"
    t.integer  "sibling_index"
    t.integer  "alumni_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.date     "mother_dob"
  end

  create_table "job_vacancies", force: :cascade do |t|
    t.string   "position"
    t.string   "description"
    t.date     "due_date"
    t.boolean  "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "news", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.text     "description"
    t.integer  "college_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "previous_educations", force: :cascade do |t|
    t.string   "elementary_school"
    t.string   "junior_high_School"
    t.string   "senior_high_school"
    t.integer  "alumni_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "trainings", force: :cascade do |t|
    t.string   "name"
    t.integer  "college_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_educations", force: :cascade do |t|
    t.string   "university_name"
    t.string   "faculty"
    t.string   "major"
    t.integer  "year"
    t.date     "graduate"
    t.integer  "alumni_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
