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

ActiveRecord::Schema.define(version: 20140320032351) do

  create_table "courses", force: true do |t|
    t.integer  "student_id"
    t.string   "title"
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "location"
    t.string   "semester"
    t.string   "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.string   "registration_number"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "full_name"
    t.integer  "age"
    t.text     "bio"
    t.string   "title"
    t.string   "company"
    t.string   "favorite_ice_cream"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "picture"
  end

  add_index "students", ["confirmation_token"], name: "index_students_on_confirmation_token", unique: true
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true

end
