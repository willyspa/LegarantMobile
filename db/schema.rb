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

ActiveRecord::Schema.define(version: 2022_03_31_223317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "sfid"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "sfid"
    t.string "email"
    t.string "firstname"
    t.string "lastname"
    t.string "mobilephone"
    t.string "accountid"
    t.string "password__c"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accountname"
    t.boolean "active__c", default: true
  end

  create_table "contracts", force: :cascade do |t|
    t.string "sfid"
    t.string "contractnumber"
    t.string "accountid"
    t.string "status"
    t.integer "contractterm"
    t.date "startdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "accountname"
    t.string "description"
  end

  create_table "options", force: :cascade do |t|
    t.string "sfid"
    t.string "contract__c"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "sfid"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
