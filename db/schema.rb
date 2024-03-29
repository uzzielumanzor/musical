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

ActiveRecord::Schema.define(:version => 20120612181855) do

  create_table "albums", :force => true do |t|
    t.string   "title_album"
    t.string   "art"
    t.string   "identity"
    t.string   "title_song"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "search_id"
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.string   "identity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "search_id"
  end

  create_table "searches", :force => true do |t|
    t.string   "petition"
    t.string   "tipo"
    t.string   "resp"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "tracks", :force => true do |t|
    t.string   "title"
    t.string   "artist"
    t.string   "album"
    t.integer  "len"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "search_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "username"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
