# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131021182656) do

  create_table "address", :primary_key => "aid", :force => true do |t|
    t.string  "street", :limit => 50
    t.string  "city",   :limit => 15
    t.string  "state",  :limit => 2
    t.integer "zip"
    t.string  "county", :limit => 15
  end

  create_table "admitted", :id => false, :force => true do |t|
    t.integer "ptid"
    t.integer "drid"
    t.integer "bid"
    t.string  "diag", :limit => 50
  end

  add_index "admitted", ["bid"], :name => "bid", :unique => true
  add_index "admitted", ["drid"], :name => "drid"
  add_index "admitted", ["ptid"], :name => "ptid"

  create_table "bed", :primary_key => "bid", :force => true do |t|
    t.integer "roomnum"
    t.integer "bednum"
  end

  create_table "catalogs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctor", :primary_key => "drid", :force => true do |t|
    t.integer "pid"
  end

  add_index "doctor", ["pid"], :name => "pid"

  create_table "inventories", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patient", :primary_key => "ptid", :force => true do |t|
    t.integer "pid"
    t.date    "a_date"
    t.date    "d_date"
  end

  add_index "patient", ["pid"], :name => "pid"

  create_table "people", :primary_key => "pid", :force => true do |t|
    t.integer "aid"
    t.string  "fname",  :limit => 20
    t.string  "lname",  :limit => 20
    t.date    "dob"
    t.string  "gender", :limit => 1
    t.string  "phone",  :limit => 10
  end

  add_index "people", ["aid"], :name => "aid"

  create_table "shoppint_carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
