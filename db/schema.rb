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

ActiveRecord::Schema.define(:version => 20110411071111) do

  create_table "employees", :force => true do |t|
    t.string   "nik"
    t.string   "name"
    t.integer  "sex"
    t.string   "birthplace"
    t.date     "birthdate"
    t.string   "nationality"
    t.string   "race"
    t.string   "identity_number"
    t.string   "religion"
    t.integer  "blood_type"
    t.integer  "rhesus"
    t.string   "registered_address"
    t.string   "registered_city"
    t.string   "registered_postal_code"
    t.string   "current_address"
    t.string   "current_city"
    t.string   "current_postal_code"
    t.integer  "residential_status",       :limit => 255
    t.integer  "marriage_status"
    t.string   "email"
    t.string   "residential_phone_number"
    t.string   "mobile_phone_number"
    t.string   "tax_number"
    t.string   "bank"
    t.string   "bank_account_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "relatives", :force => true do |t|
    t.integer  "relationship"
    t.string   "name"
    t.integer  "sex"
    t.string   "last_education"
    t.string   "birthplace"
    t.date     "birthdate"
    t.string   "company"
    t.string   "title"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
