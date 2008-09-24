# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 3) do

  create_table "poll_options", :force => true do |t|
    t.integer  "poll_id"
    t.boolean  "enable_captcha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polls", :force => true do |t|
    t.string   "name"
    t.text     "instructions"
    t.text     "candidates"
    t.string   "key"
    t.string   "admin_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "polls", ["admin_key"], :name => "index_polls_on_admin_key"
  add_index "polls", ["key"], :name => "index_polls_on_key"

  create_table "votes", :force => true do |t|
    t.integer  "poll_id"
    t.text     "ratings"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
