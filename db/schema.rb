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

ActiveRecord::Schema[8.0].define(version: 2025_01_05_133001) do
  create_table "cocoapuffs", force: :cascade do |t|
    t.string "name"
    t.boolean "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fruty_pebbles", force: :cascade do |t|
    t.string "name"
    t.integer "pebble_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cocoapuff_id"
    t.index ["cocoapuff_id"], name: "index_fruty_pebbles_on_cocoapuff_id"
  end
end
