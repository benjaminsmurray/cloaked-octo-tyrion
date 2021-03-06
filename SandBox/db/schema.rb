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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130331200733) do

  create_table "comments", :force => true do |t|
    t.text     "msg"
    t.integer  "welcome_page_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "commenter"
  end

  add_index "comments", ["welcome_page_id"], :name => "index_comments_on_welcome_page_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.integer  "welcome_page_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "name2"
  end

  add_index "tags", ["welcome_page_id"], :name => "index_tags_on_welcome_page_id"

  create_table "welcome_pages", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "title"
  end

end
