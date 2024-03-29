# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_17_153110) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.string "age", limit: 3
    t.string "age_group", limit: 8
    t.string "sex", limit: 6
    t.date "date_announced"
    t.string "date_recovered", limit: 10
    t.string "date_of_death", limit: 10
    t.string "status", limit: 16
    t.string "date_announced_as_removed", limit: 10
    t.string "province", limit: 19
    t.string "muni_city", limit: 25
    t.string "health_status", limit: 12
    t.string "home_quarantined", limit: 3
    t.string "date_of_onset_of_symptoms", limit: 10
    t.string "pregnant", limit: 3
    t.string "region", limit: 43
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attribute1"
    t.string "attribute2"
    t.string "attribute3"
  end

end
