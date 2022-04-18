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

ActiveRecord::Schema[7.0].define(version: 2022_04_18_164008) do
  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "customer"
    t.date "work_start"
    t.date "work_finish"
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

  create_table "work_type_locations", force: :cascade do |t|
    t.integer "work_type"
    t.integer "location"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_type_workers", force: :cascade do |t|
    t.integer "work_type"
    t.integer "worker"
    t.float "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_types", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worker_locations", force: :cascade do |t|
    t.integer "worker"
    t.integer "location"
    t.float "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "contacts"
    t.string "documents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
