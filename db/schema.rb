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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101204150206) do

  create_table "exercises", :force => true do |t|
    t.integer  "training_id"
    t.string   "name"
    t.string   "type_id"
    t.string   "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", :force => true do |t|
    t.integer  "training_id"
    t.integer  "user_id"
    t.float    "value"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "comment"
  end

  create_table "trainings", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "info"
    t.string   "week_days"
    t.integer  "times_per_day"
    t.date     "result_date"
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "values", :force => true do |t|
    t.integer  "training_id"
    t.string   "name"
    t.string   "class"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
