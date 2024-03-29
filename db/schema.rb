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

ActiveRecord::Schema.define(version: 20131223184809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "champions", force: true do |t|
    t.string   "name",                null: false
    t.boolean  "active"
    t.boolean  "free_to_play"
    t.boolean  "ranked_play_enabled"
    t.boolean  "bot_enabled"
    t.boolean  "bot_mm_enabled"
    t.integer  "difficulty_rank"
    t.integer  "attack_rank"
    t.integer  "defense_rank"
    t.integer  "magic_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
