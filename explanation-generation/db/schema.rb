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

ActiveRecord::Schema.define(version: 2018_06_09_181056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.bigint "scenario_id"
    t.index ["scenario_id"], name: "index_people_on_scenario_id"
  end

  create_table "point_of_interests", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "scenario_id"
    t.index ["scenario_id"], name: "index_point_of_interests_on_scenario_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.string "description", null: false
    t.string "persona", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_id"
    t.bigint "point_of_interest_id"
    t.index ["person_id"], name: "index_scores_on_person_id"
    t.index ["point_of_interest_id"], name: "index_scores_on_point_of_interest_id"
  end

  create_table "sequences", force: :cascade do |t|
    t.json "sequence"
    t.string "strategy", null: false
    t.bigint "scenario_id"
    t.index ["scenario_id"], name: "index_sequences_on_scenario_id"
  end

  add_foreign_key "people", "scenarios"
  add_foreign_key "point_of_interests", "scenarios"
  add_foreign_key "scores", "people"
  add_foreign_key "scores", "point_of_interests"
end
