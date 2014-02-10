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

ActiveRecord::Schema.define(version: 20140210184823) do

  create_table "dumps", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "dumpfile_file_name"
    t.string   "dumpfile_content_type"
    t.integer  "dumpfile_file_size"
    t.datetime "dumpfile_updated_at"
  end

  create_table "transactions", force: true do |t|
    t.string   "purchaser_name"
    t.string   "item_description"
    t.string   "item_price"
    t.string   "purchase_count"
    t.string   "merchant_address"
    t.string   "merchant_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
