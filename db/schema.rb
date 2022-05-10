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

ActiveRecord::Schema[7.0].define(version: 2022_05_10_173525) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "position"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diaries", force: :cascade do |t|
    t.integer "worker_id"
    t.integer "location_work_type_id"
    t.integer "size"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "diary_date"
    t.boolean "accord"
    t.integer "salary_id"
  end

  create_table "expenditures", force: :cascade do |t|
    t.string "name"
    t.date "exp_date"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "buy_date"
    t.integer "price"
    t.integer "location_id"
    t.integer "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investments", force: :cascade do |t|
    t.string "description"
    t.date "inv_date"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_customers", force: :cascade do |t|
    t.integer "location_id"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_materials", force: :cascade do |t|
    t.integer "location_id"
    t.integer "material_id"
    t.integer "count"
    t.integer "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "buy_date"
  end

  create_table "location_work_types", force: :cascade do |t|
    t.integer "location_id"
    t.integer "work_type_id"
    t.integer "price"
    t.integer "progress"
    t.date "start_date"
    t.date "finish_date"
    t.boolean "paid"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "accord_price"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payouts", force: :cascade do |t|
    t.integer "location_work_type_id"
    t.integer "size"
    t.date "payout_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.integer "worker_id"
    t.date "salary_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "size"
  end

  create_table "transports", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "to_date"
    t.date "insurance_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "buy_date"
    t.integer "price"
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

  create_table "work_types", force: :cascade do |t|
    t.string "name"
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "rate"
    t.string "adress"
    t.string "phone"
    t.string "email"
    t.string "status"
    t.string "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
