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

ActiveRecord::Schema.define(version: 20141029043213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: true do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.text     "object"
    t.string   "function"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.text     "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  create_table "users", force: true do |t|
    t.integer  "room_id"
    t.string   "name"
    t.text     "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "recent_rooms"
  end

end
