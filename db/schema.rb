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

ActiveRecord::Schema.define(version: 20150523224421) do

  create_table "kids", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memorizeds", force: :cascade do |t|
    t.integer  "kid_id"
    t.integer  "verse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "memorizeds", ["kid_id"], name: "index_memorizeds_on_kid_id"
  add_index "memorizeds", ["verse_id"], name: "index_memorizeds_on_verse_id"

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "parents", ["user_id"], name: "index_parents_on_user_id"

  create_table "practices", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "example"
    t.string   "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "todos", force: :cascade do |t|
    t.string   "title"
    t.boolean  "status"
    t.integer  "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "verses", force: :cascade do |t|
    t.string   "text"
    t.integer  "chapter"
    t.integer  "verse"
    t.integer  "ref_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "verses", ["ref_id"], name: "index_verses_on_ref_id"

end
