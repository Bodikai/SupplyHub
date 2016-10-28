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

ActiveRecord::Schema.define(version: 20161027122224) do

  create_table "hotel_changes", force: :cascade do |t|
    t.string   "booking_ref"
    t.string   "lead_surname"
    t.date     "date_received"
    t.date     "date_advised"
    t.date     "arrival_date"
    t.string   "change_reason"
    t.string   "catalyst"
    t.string   "original_hotel"
    t.string   "original_hotel_resort"
    t.string   "original_hotel_destination"
    t.string   "new_hotel"
    t.float    "original_cost"
    t.float    "new_cost"
    t.string   "currency"
    t.float    "exchange_rate"
    t.string   "status"
    t.date     "date_resolved"
    t.string   "resolved_by"
    t.text     "notes"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
