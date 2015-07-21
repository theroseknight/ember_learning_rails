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

ActiveRecord::Schema.define(version: 20150718024709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "legs", force: :cascade do |t|
    t.integer  "roadtrip_id"
    t.string   "starting_city"
    t.string   "starting_state"
    t.string   "ending_city"
    t.string   "ending_state"
    t.string   "latitude"
    t.string   "longitude"
    t.integer  "marker_position"
    t.boolean  "home_marker",     default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "roadtrips", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_days"
    t.integer  "hours_of_sleep"
    t.string   "car_year"
    t.string   "car_make"
    t.string   "car_model"
    t.string   "car_mpg"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "city_mpg"
    t.string   "fuel_type"
    t.integer  "highway_mpg"
    t.integer  "api_id_number"
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
