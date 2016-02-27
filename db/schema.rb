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

ActiveRecord::Schema.define(version: 20160225205534) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "act"
    t.string   "hometown"
    t.string   "country"
    t.date     "active_since"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "bands_events", id: false, force: :cascade do |t|
    t.integer "band_id",  null: false
    t.integer "event_id", null: false
  end

  add_index "bands_events", ["band_id", "event_id"], name: "index_bands_events_on_band_id_and_event_id", using: :btree
  add_index "bands_events", ["event_id", "band_id"], name: "index_bands_events_on_event_id_and_band_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.integer  "venue_id"
    t.string   "event_name"
    t.string   "event_type"
    t.string   "poster_url"
    t.string   "age_limit"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "dresscode"
    t.decimal  "price"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_genres", id: false, force: :cascade do |t|
    t.integer "event_id", null: false
    t.integer "genre_id", null: false
  end

  add_index "events_genres", ["event_id", "genre_id"], name: "index_events_genres_on_event_id_and_genre_id", unique: true, using: :btree

  create_table "events_organizers", id: false, force: :cascade do |t|
    t.integer "event_id",     null: false
    t.integer "organizer_id", null: false
  end

  add_index "events_organizers", ["event_id", "organizer_id"], name: "index_events_organizers_on_event_id_and_organizer_id", unique: true, using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "venue_type"
    t.text     "about"
    t.string   "location"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
