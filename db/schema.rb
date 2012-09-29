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

ActiveRecord::Schema.define(:version => 20120929002229) do

  create_table "firstnames", :force => true do |t|
    t.string   "body"
    t.string   "gender"
    t.decimal  "frequency",  :precision => 4, :scale => 3
    t.integer  "rank"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "firstnames", ["frequency"], :name => "index_firstnames_on_frequency"
  add_index "firstnames", ["gender"], :name => "index_firstnames_on_gender"
  add_index "firstnames", ["rank"], :name => "index_firstnames_on_rank"

  create_table "surnames", :force => true do |t|
    t.string   "body"
    t.decimal  "frequency",   :precision => 5, :scale => 2
    t.integer  "rank"
    t.decimal  "pctwhite",    :precision => 4, :scale => 2
    t.decimal  "pctblack",    :precision => 4, :scale => 2
    t.decimal  "pctasian",    :precision => 4, :scale => 2
    t.decimal  "pctnative",   :precision => 4, :scale => 2
    t.decimal  "pcthispanic", :precision => 4, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "surnames", ["frequency"], :name => "index_surnames_on_frequency"
  add_index "surnames", ["pctasian"], :name => "index_surnames_on_pctasian"
  add_index "surnames", ["pctblack"], :name => "index_surnames_on_pctblack"
  add_index "surnames", ["pcthispanic"], :name => "index_surnames_on_pcthispanic"
  add_index "surnames", ["pctnative"], :name => "index_surnames_on_pctnative"
  add_index "surnames", ["pctwhite"], :name => "index_surnames_on_pctwhite"
  add_index "surnames", ["rank"], :name => "index_surnames_on_rank"

end
