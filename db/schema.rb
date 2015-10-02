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

ActiveRecord::Schema.define(version: 20141120062752) do

  create_table "animals", force: true do |t|
    t.string   "fischart"
    t.string   "farbe"
    t.integer  "anzahl"
    t.string   "sex"
    t.text     "kommentar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "waters", force: true do |t|
    t.datetime "datum"
    t.float    "cl2"
    t.float    "ph"
    t.integer  "kh"
    t.integer  "gh"
    t.float    "NO2"
    t.float    "NO3"
    t.float    "temperatur"
    t.text     "kommentar"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
