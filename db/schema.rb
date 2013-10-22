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

ActiveRecord::Schema.define(version: 20131020122133) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "contact_person"
    t.text     "contact_addr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_attendings", force: true do |t|
    t.integer  "companyvisit_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_attendings", ["companyvisit_id"], name: "index_company_attendings_on_companyvisit_id"
  add_index "company_attendings", ["student_id"], name: "index_company_attendings_on_student_id"

  create_table "companyvisits", force: true do |t|
    t.integer  "company_id"
    t.date     "on"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "jnf"
  end

  add_index "companyvisits", ["company_id"], name: "index_companyvisits_on_company_id"

  create_table "placements", force: true do |t|
    t.integer  "student_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "placements", ["company_id"], name: "index_placements_on_company_id"
  add_index "placements", ["student_id"], name: "index_placements_on_student_id"

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "student_trainings", force: true do |t|
    t.integer  "student_id"
    t.integer  "training_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "student_trainings", ["student_id"], name: "index_student_trainings_on_student_id"
  add_index "student_trainings", ["training_id"], name: "index_student_trainings_on_training_id"

  create_table "students", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "course"
    t.string   "dept"
    t.string   "batch"
    t.string   "gender"
    t.date     "dob"
    t.string   "fname"
    t.string   "mname"
    t.string   "fjob"
    t.string   "mjob"
    t.text     "paddr"
    t.text     "taddr"
    t.integer  "height"
    t.float    "weight"
    t.string   "eye"
    t.string   "mobile"
    t.string   "resiph"
    t.string   "emerph"
    t.string   "email"
    t.string   "regreceipt"
    t.integer  "erank"
    t.string   "ssc_board"
    t.integer  "ssc_yop"
    t.float    "ssc_aggr"
    t.string   "hsc_board"
    t.integer  "hsc_yop"
    t.float    "hsc_aggr"
    t.string   "d_trade"
    t.integer  "d_yop"
    t.string   "d_board"
    t.float    "d_aggr"
    t.float    "ug12"
    t.float    "ug3"
    t.float    "ug4"
    t.float    "ug5"
    t.float    "ug6"
    t.float    "ug7"
    t.float    "ug8"
    t.float    "ug9"
    t.float    "ug10"
    t.float    "ug_cgpa"
    t.integer  "ug_hist12"
    t.integer  "ug_hist3"
    t.integer  "ug_hist4"
    t.integer  "ug_hist5"
    t.integer  "ug_hist6"
    t.integer  "ug_hist7"
    t.integer  "ug_hist8"
    t.integer  "ug_hist_total"
    t.integer  "ug_backlog12"
    t.integer  "ug_backlog3"
    t.integer  "ug_backlog4"
    t.integer  "ug_backlog5"
    t.integer  "ug_backlog6"
    t.integer  "ug_backlog7"
    t.integer  "ug_backlog8"
    t.integer  "ug_b_pending"
    t.float    "pg1"
    t.float    "pg2"
    t.float    "pg3"
    t.float    "pg4"
    t.float    "pg_cgpu"
    t.integer  "pg_hist1"
    t.integer  "pg_hist2"
    t.integer  "pg_hist3"
    t.integer  "pg_hist4"
    t.integer  "pg_hist_total"
    t.integer  "pg_backlog1"
    t.integer  "pg_backlog2"
    t.integer  "pg_backlog3"
    t.integer  "pg_backlog4"
    t.integer  "pg_backlog_pending"
    t.text     "gap"
    t.integer  "verify_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "adv_approved",       default: false
  end

  add_index "students", ["user_id"], name: "index_students_on_user_id"

  create_table "trainings", force: true do |t|
    t.string   "conducted_by"
    t.date     "on"
    t.integer  "no_of_days"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "batch"
    t.string   "dept"
    t.string   "course"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
