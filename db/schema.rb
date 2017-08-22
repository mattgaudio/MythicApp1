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

ActiveRecord::Schema.define(version: 20170821232857) do

  create_table "bracket_pool_players", force: :cascade do |t|
    t.integer "bracket_pool_id"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
    t.index ["bracket_pool_id"], name: "index_bracket_pool_players_on_bracket_pool_id"
    t.index ["player_id"], name: "index_bracket_pool_players_on_player_id"
  end

  create_table "bracket_pools", force: :cascade do |t|
    t.integer "bracket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "player_size"
    t.string "title"
    t.boolean "active"
    t.datetime "activation_time"
    t.datetime "end_time"
    t.integer "duration"
    t.boolean "weekly"
    t.boolean "nightly"
    t.string "console"
    t.index ["bracket_id"], name: "index_bracket_pools_on_bracket_id"
  end

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
    t.index ["game_type"], name: "index_games_on_game_type"
  end

  create_table "players", force: :cascade do |t|
    t.integer "user_id"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "active_player"
    t.integer "points"
    t.integer "team_id"
    t.string "xb1_gamertag"
    t.string "ps4_gamertag"
    t.string "steam_username"
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "bracket_pool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bracket_pool_id"], name: "index_teams_on_bracket_pool_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tournament_type"
    t.string "url"
    t.string "name"
    t.string "description"
    t.integer "tournament_id"
    t.boolean "open_signup"
    t.boolean "show_rounds"
    t.boolean "private"
    t.datetime "start_at"
    t.integer "bracket_id"
    t.index ["bracket_id"], name: "index_tournaments_on_bracket_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.string "nickname"
    t.boolean "admin"
    t.boolean "staff"
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
