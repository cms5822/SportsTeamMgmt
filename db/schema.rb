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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121017200813) do

  create_table "games", :force => true do |t|
    t.integer  "league_id"
    t.integer  "venue_id"
    t.integer  "home_id"
    t.integer  "away_id"
    t.date     "date"
    t.integer  "homeScore"
    t.integer  "awayScore"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "name"
    t.integer  "sport_id"
    t.integer  "owner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "username"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sports", :force => true do |t|
    t.string   "name"
    t.string   "configpath"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "team_coaches", :force => true do |t|
    t.integer  "person_id"
    t.integer  "team_id"
    t.string   "coachTitle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "team_players", :force => true do |t|
    t.integer "person_id"
    t.integer "team_id"
    t.integer "player_number"
    t.integer "active"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "manager_id"
    t.integer  "league_id"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.integer  "seatCapacity"
    t.boolean  "indoor"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
