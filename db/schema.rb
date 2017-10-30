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

ActiveRecord::Schema.define(version: 20171026201423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "country"
    t.string "region"
    t.string "city"
    t.integer "zip_code"
    t.string "street"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.integer "location"
    t.bigint "photo_id"
    t.integer "capacity"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_boats_on_photo_id"
  end

  create_table "job_boats", force: :cascade do |t|
    t.bigint "job_id"
    t.bigint "boat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["boat_id"], name: "index_job_boats_on_boat_id"
    t.index ["job_id"], name: "index_job_boats_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "manager_id"
    t.bigint "origin_id"
    t.bigint "destination_id"
    t.integer "containers"
    t.integer "price_per_cont"
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_jobs_on_client_id"
    t.index ["destination_id"], name: "index_jobs_on_destination_id"
    t.index ["manager_id"], name: "index_jobs_on_manager_id"
    t.index ["origin_id"], name: "index_jobs_on_origin_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "title"
    t.string "caption"
    t.string "content_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "ports", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.bigint "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_ports_on_photo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "boats", "photos"
  add_foreign_key "job_boats", "boats"
  add_foreign_key "job_boats", "jobs"
  add_foreign_key "ports", "photos"
end
