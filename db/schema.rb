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

ActiveRecord::Schema.define(version: 2018_06_03_091246) do

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.date "held_on", null: false
    t.string "location"
  end

  create_table "issues", force: :cascade do |t|
    t.string "name", null: false
    t.integer "size_cd"
    t.integer "page"
    t.integer "color_type_cd"
    t.integer "count"
    t.integer "price"
    t.integer "class_cd"
    t.datetime "published_at", null: false
    t.string "remarks"
    t.integer "event_id"
  end

end
