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

ActiveRecord::Schema.define(version: 20170815034352) do

  create_table "brackets", force: :cascade do |t|
    t.datetime "event"
    t.string "title"
    t.integer "players"
    t.integer "brackets_filled"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.boolean "nightly_free", default: true
    t.boolean "nightly_10", default: true
    t.boolean "nightly_25", default: true
    t.boolean "nightly_100"
    t.boolean "weekly_free", default: true
    t.boolean "weekly_10", default: true
    t.boolean "weekly_25", default: true
    t.boolean "weekly_100", default: true
    t.boolean "weekly_250"
    t.boolean "weekly_500"
    t.integer "players_per_team"
    t.integer "rounds"
    t.string "tournament_type"
    t.boolean "console_xbox"
    t.boolean "console_ps4"
    t.boolean "console_steam"
    t.index ["game_id"], name: "index_brackets_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "short_title"
    t.string "long_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "game_type"
    t.string "game_group"
    t.string "game_img_file_name"
    t.string "game_img_content_type"
    t.integer "game_img_file_size"
    t.datetime "game_img_updated_at"
    t.boolean "active"
  end

  create_table "tournaments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tournament_type"
    t.string "url"
    t.string "name"
    t.string "description"
    t.integer "tournament_id"
  end

end
