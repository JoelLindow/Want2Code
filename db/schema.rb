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

ActiveRecord::Schema.define(version: 20170813200431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coders", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "about"
    t.text "looking_for"
    t.text "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skillsets", force: :cascade do |t|
    t.bigint "coder_id"
    t.bigint "language_id"
    t.text "skill_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coder_id"], name: "index_skillsets_on_coder_id"
    t.index ["language_id"], name: "index_skillsets_on_language_id"
  end

  add_foreign_key "skillsets", "coders"
  add_foreign_key "skillsets", "languages"
end
