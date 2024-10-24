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

ActiveRecord::Schema[7.1].define(version: 2024_10_10_011321) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "automakers", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.integer "fundation_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_models", force: :cascade do |t|
    t.string "name"
    t.integer "automaker_id", null: false
    t.decimal "reference_value"
    t.decimal "engine_size"
    t.boolean "turbo"
    t.boolean "automatic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["automaker_id"], name: "index_vehicle_models_on_automaker_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer "vehicle_model_id", null: false
    t.string "color"
    t.integer "manufacturing_year"
    t.integer "model_year"
    t.decimal "value"
    t.string "license_plate"
    t.boolean "sold"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_model_id"], name: "index_vehicles_on_vehicle_model_id"
  end

  add_foreign_key "vehicle_models", "automakers"
  add_foreign_key "vehicles", "vehicle_models"
end
