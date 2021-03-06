# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140720091052) do

  create_table "competences", force: true do |t|
    t.string   "name"
    t.string   "competence_type"
    t.string   "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "competences_lessons", id: false, force: true do |t|
    t.integer "competence_id", null: false
    t.integer "lesson_id",     null: false
  end

  create_table "discipline_competences", force: true do |t|
    t.integer  "discipline_id"
    t.integer  "competence_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "discipline_competences", ["competence_id"], name: "index_discipline_competences_on_competence_id"
  add_index "discipline_competences", ["discipline_id"], name: "index_discipline_competences_on_discipline_id"

  create_table "discipline_results", force: true do |t|
    t.integer  "discipline_id"
    t.integer  "student_id"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discipline_results", ["discipline_id"], name: "index_discipline_results_on_discipline_id"
  add_index "discipline_results", ["student_id"], name: "index_discipline_results_on_student_id"

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lesson_results", force: true do |t|
    t.integer  "lesson_id"
    t.integer  "student_id"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lesson_results", ["lesson_id"], name: "index_lesson_results_on_lesson_id"
  add_index "lesson_results", ["student_id"], name: "index_lesson_results_on_student_id"

  create_table "lessons", force: true do |t|
    t.integer  "topic_id"
    t.integer  "discipline_id"
    t.string   "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialists", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "specialities", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "speciality_competences", force: true do |t|
    t.integer  "speciality_id"
    t.integer  "competence_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "speciality_competences", ["competence_id"], name: "index_speciality_competences_on_competence_id"
  add_index "speciality_competences", ["speciality_id"], name: "index_speciality_competences_on_speciality_id"

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "group"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_results", force: true do |t|
    t.integer  "task_id"
    t.integer  "student_id"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "task_results", ["student_id"], name: "index_task_results_on_student_id"
  add_index "task_results", ["task_id"], name: "index_task_results_on_task_id"

  create_table "tasks", force: true do |t|
    t.integer  "lesson_id"
    t.integer  "level"
    t.text     "xml"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_num"
  end

  add_index "tasks", ["lesson_id"], name: "index_tasks_on_lesson_id"

  create_table "topic_results", force: true do |t|
    t.integer  "topic_id"
    t.integer  "student_id"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topic_results", ["student_id"], name: "index_topic_results_on_student_id"
  add_index "topic_results", ["topic_id"], name: "index_topic_results_on_topic_id"

  create_table "topics", force: true do |t|
    t.integer "discipline_id"
    t.string  "name"
  end

end
