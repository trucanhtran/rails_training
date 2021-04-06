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

ActiveRecord::Schema.define(version: 2021_04_06_143809) do

  create_table "fathers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sons", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "phone"
    t.string "address"
    t.integer "father_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["father_id"], name: "index_sons_on_father_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "phone"
    t.string "address"
    t.text "bio"
    t.integer "subject_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_students_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "faculty"
    t.integer "period"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
