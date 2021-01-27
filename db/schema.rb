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

ActiveRecord::Schema.define(version: 2021_01_27_122946) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "ground_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team1_id"
    t.integer "team2_id"
  end

  create_table "grounds", force: :cascade do |t|
    t.text "name"
    t.text "address"
    t.text "image"
    t.text "google_map"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "role"
    t.string "grade"
    t.integer "suburb"
    t.text "bio"
    t.text "banner_photo"
    t.text "email"
    t.string "password_digest"
    t.integer "team_id"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_role", default: "player"
    t.string "profile_image"
  end

  create_table "teams", force: :cascade do |t|
    t.text "name"
    t.text "logo"
    t.text "banner_photo"
    t.string "grade"
    t.integer "suburb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.text "email"
    t.string "user_role", default: "team"
    t.integer "player_limit", default: 20
    t.boolean "is_team", default: true
    t.boolean "admin", default: false
    t.text "bio"
  end

  create_table "users", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
