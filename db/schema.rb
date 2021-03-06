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

ActiveRecord::Schema.define(version: 20170904101436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mentees", force: :cascade do |t|
    t.integer "user_id"
    t.string "email"
    t.string "f_name"
    t.string "l_name"
    t.string "gender"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state_province"
    t.string "zip_postal"
    t.string "current_country"
    t.string "counry_of_origin"
    t.string "college_level"
    t.string "college_name"
    t.string "college_major"
    t.string "about"
    t.string "industry_interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_no"
    t.boolean "matched", default: false
    t.integer "mentor_id"
  end

  create_table "mentors", force: :cascade do |t|
    t.integer "user_id"
    t.string "email"
    t.string "f_name"
    t.string "l_name"
    t.string "gender"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "state_province"
    t.string "zip_postal"
    t.string "current_country"
    t.string "counry_of_origin"
    t.string "phone_no"
    t.string "company"
    t.string "job_title"
    t.string "industry_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "matched", default: false
    t.integer "mentee_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "mentor_id"
    t.integer "mentee_id"
    t.string "content"
    t.boolean "seen", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sender"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.string "type"
    t.string "f_name"
    t.string "l_name"
    t.boolean "complete", default: false
    t.string "avatar"
    t.string "status"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
