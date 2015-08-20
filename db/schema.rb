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

ActiveRecord::Schema.define(version: 20150820205647) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_completions", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "course_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "course_completions", ["user_id", "course_id"], name: "index_course_completions_on_user_id_and_course_id", unique: true, using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "language",       null: false
    t.string   "description",    null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "title",          null: false
    t.string   "image_location"
  end

  add_index "courses", ["language"], name: "index_courses_on_language", using: :btree

  create_table "exercise_completions", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "exercise_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "exercise_completions", ["user_id", "exercise_id"], name: "index_exercise_completions_on_user_id_and_exercise_id", unique: true, using: :btree
  add_index "exercise_completions", ["user_id"], name: "index_exercise_completions_on_user_id", using: :btree

  create_table "exercises", force: :cascade do |t|
    t.text     "readings",     null: false
    t.text     "instructions", null: false
    t.integer  "topic_id",     null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title",        null: false
  end

  add_index "exercises", ["topic_id"], name: "index_exercises_on_topic_id", using: :btree

  create_table "solutions", force: :cascade do |t|
    t.string   "result",      default: "nil"
    t.string   "output",      default: "nil"
    t.integer  "exercise_id",                 null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "solutions", ["exercise_id"], name: "index_solutions_on_exercise_id", unique: true, using: :btree

  create_table "topic_completions", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "topic_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topic_completions", ["user_id", "topic_id"], name: "index_topic_completions_on_user_id_and_topic_id", unique: true, using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "description", null: false
    t.integer  "course_id",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "topics", ["course_id"], name: "index_topics_on_course_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
