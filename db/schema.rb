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

ActiveRecord::Schema.define(version: 20151005095255) do

  create_table "articles", force: :cascade do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "upvotes",    default: 0
  end

  add_index "articles", ["author_id"], name: "index_articles_on_author_id"

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "articles_count", default: 0
  end

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id"

end
