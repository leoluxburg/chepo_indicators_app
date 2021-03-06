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

ActiveRecord::Schema.define(version: 2020_02_29_074416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formulas", force: :cascade do |t|
    t.bigint "statistic_id"
    t.bigint "indicator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["indicator_id"], name: "index_formulas_on_indicator_id"
    t.index ["statistic_id"], name: "index_formulas_on_statistic_id"
  end

  create_table "indicators", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "methodology"
    t.string "positive"
    t.string "negative"
    t.string "medium"
    t.string "unit"
    t.string "value"
    t.float "rate"
    t.string "result"
    t.text "justification"
    t.text "other"
    t.bigint "subtheme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subtheme_id"], name: "index_indicators_on_subtheme_id"
  end

  create_table "reasons", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_reasons_on_topic_id"
  end

  create_table "statistics", force: :cascade do |t|
    t.string "title"
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subthemes", force: :cascade do |t|
    t.string "title"
    t.text "comment"
    t.bigint "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_subthemes_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "title"
    t.bigint "reason_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reason_id"], name: "index_themes_on_reason_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "formulas", "indicators"
  add_foreign_key "formulas", "statistics"
  add_foreign_key "indicators", "subthemes"
  add_foreign_key "reasons", "topics"
  add_foreign_key "subthemes", "themes"
  add_foreign_key "themes", "reasons"
end
