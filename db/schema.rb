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

ActiveRecord::Schema.define(version: 2021_04_25_162102) do

  create_table "canzones", force: :cascade do |t|
    t.text "testos"
    t.integer "songgoer_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_canzones_on_song_id"
    t.index ["songgoer_id"], name: "index_canzones_on_songgoer_id"
  end

  create_table "lyrics", force: :cascade do |t|
    t.integer "potatoes"
    t.text "lyrics"
    t.integer "songgoer_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_lyrics_on_song_id"
    t.index ["songgoer_id"], name: "index_lyrics_on_songgoer_id"
  end

  create_table "songgoers", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.string "album"
    t.string "genre"
    t.datetime "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "canzones", "songgoers"
  add_foreign_key "canzones", "songs"
  add_foreign_key "lyrics", "songgoers"
  add_foreign_key "lyrics", "songs"
end
