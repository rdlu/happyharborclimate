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

ActiveRecord::Schema.define(version: 20141208133336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forecast_logs", force: true do |t|
    t.integer  "forecast_provider_id"
    t.datetime "day"
    t.float    "temperature_max"
    t.float    "temperature_min"
    t.float    "precipitation"
    t.float    "pressure"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "forecast_logs", ["forecast_provider_id"], name: "index_forecast_logs_on_forecast_provider_id", using: :btree

  create_table "forecast_providers", force: true do |t|
    t.string   "name"
    t.string   "apitype"
    t.text     "apiparams"
    t.text     "provides"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "station_logs", force: true do |t|
    t.integer  "station_id"
    t.datetime "normalized_timestamp"
    t.float    "temperature"
    t.integer  "pressure"
    t.integer  "windspeed"
    t.string   "winddirection"
    t.float    "humidity"
    t.float    "dewpoint"
    t.float    "precipitation"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "station_logs", ["station_id"], name: "index_station_logs_on_station_id", using: :btree

  create_table "stations", force: true do |t|
    t.string   "name"
    t.string   "lat"
    t.string   "lon"
    t.string   "apitype"
    t.text     "apiparams"
    t.text     "provides"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "forecast_logs", "forecast_providers"
  add_foreign_key "station_logs", "stations"
end
