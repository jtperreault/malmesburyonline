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

ActiveRecord::Schema.define(version: 2019_03_18_000743) do

  create_table "walk_section_buttons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "button_type"
    t.string "button_vert_pos"
    t.string "button_hor_pos"
    t.text "button_text"
    t.date "from"
    t.date "to"
    t.bigint "walk_section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "next_walk_section_id"
    t.index ["next_walk_section_id"], name: "fk_rails_3d5fa49e25"
    t.index ["walk_section_id"], name: "index_walk_section_buttons_on_walk_section_id"
  end

  create_table "walk_sections", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.text "description"
    t.bigint "walk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["walk_id"], name: "index_walk_sections_on_walk_id"
  end

  create_table "walks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.date "date_from"
    t.date "date_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "walk_section_buttons", "walk_sections"
  add_foreign_key "walk_section_buttons", "walk_sections", column: "next_walk_section_id"
  add_foreign_key "walk_sections", "walks"
end
