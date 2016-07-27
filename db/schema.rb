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

ActiveRecord::Schema.define(version: 20160724093519) do

  create_table "jobs", force: :cascade do |t|
    t.integer  "created_by_id"
    t.integer  "assigned_to_id"
    t.integer  "recipient_id"
    t.integer  "template_id"
    t.datetime "created_at",     null: false
    t.datetime "start_after"
    t.datetime "due_by"
    t.datetime "updated_at",     null: false
    t.index ["assigned_to_id"], name: "index_jobs_on_assigned_to_id"
    t.index ["created_by_id"], name: "index_jobs_on_created_by_id"
    t.index ["recipient_id"], name: "index_jobs_on_recipient_id"
    t.index ["template_id"], name: "index_jobs_on_template_id"
  end

  create_table "recipients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "status"
    t.string   "image_url"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "title"
    t.text     "description"
    t.index ["job_id"], name: "index_tasks_on_job_id"
  end

  create_table "templates", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_templates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "role"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "google_id"
    t.string   "refresh_token"
    t.string   "profile_photo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
