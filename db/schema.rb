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

ActiveRecord::Schema.define(version: 20160409143319) do

  create_table "courses", force: true do |t|
    t.string  "name"
    t.string  "study_center"
    t.integer "hours"
    t.date    "start_date"
    t.date    "end_date"
    t.integer "cv_id"
  end

  add_index "courses", ["cv_id"], name: "index_courses_on_cv_id", using: :btree

  create_table "cvs", force: true do |t|
    t.string   "professional_profile"
    t.string   "mother_tongue"
    t.string   "language_1"
    t.string   "language_2"
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "education_id"
    t.integer  "experience_id"
    t.integer  "course_id"
    t.integer  "user_id"
  end

  add_index "cvs", ["course_id"], name: "index_cvs_on_course_id", using: :btree
  add_index "cvs", ["education_id"], name: "index_cvs_on_education_id", using: :btree
  add_index "cvs", ["experience_id"], name: "index_cvs_on_experience_id", using: :btree
  add_index "cvs", ["user_id"], name: "index_cvs_on_user_id", using: :btree

  create_table "educations", force: true do |t|
    t.string  "degree"
    t.string  "study_center"
    t.date    "start_date"
    t.date    "end_date"
    t.integer "cv_id"
  end

  add_index "educations", ["cv_id"], name: "index_educations_on_cv_id", using: :btree

  create_table "experiences", force: true do |t|
    t.string  "job"
    t.string  "company"
    t.date    "start_date"
    t.date    "end_date"
    t.text    "description"
    t.integer "cv_id"
  end

  add_index "experiences", ["cv_id"], name: "index_experiences_on_cv_id", using: :btree

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "phone"
    t.string   "url_1"
    t.string   "url_2"
    t.string   "url_3"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
