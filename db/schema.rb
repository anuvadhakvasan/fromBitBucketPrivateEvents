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

ActiveRecord::Schema.define(version: 20150710175054) do

  create_table "event_participations", force: :cascade do |t|
    t.integer  "participatory_event_id"
    t.integer  "participant_user_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "event_participations", ["participant_user_id"], name: "index_event_participations_on_participant_user_id"
  add_index "event_participations", ["participatory_event_id"], name: "index_event_participations_on_participatory_event_id"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.string   "location"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
    t.integer  "creator_id"
  end

  add_index "events", ["creator_id"], name: "index_events_on_creator_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
