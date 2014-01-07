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

ActiveRecord::Schema.define(:version => 20140106055826) do

  create_table "corporates", :force => true do |t|
    t.string   "email"
    t.string   "firm_net"
    t.string   "firm_scale"
    t.string   "pinyin"
    t.string   "sign_address"
    t.string   "hope_work"
    t.string   "seek_status"
    t.string   "contact_address"
    t.string   "firm_name"
    t.string   "firm_tel"
    t.string   "manager_name"
    t.string   "manager_contact"
    t.string   "hope_salary"
    t.string   "expaction_job"
    t.text     "experience_year"
    t.text     "language_ability"
    t.text     "year_get"
    t.text     "certificate"
    t.text     "skill"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "profiles", :force => true do |t|
    t.datetime "first_time"
    t.datetime "last_time"
    t.string   "firm_name"
    t.string   "postition"
    t.string   "post_job"
    t.string   "salary"
    t.text     "work_profile"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "profiles", ["user_id"], :name => "index_profiles_on_user_id"

  create_table "recruits", :force => true do |t|
    t.string   "comepany_name"
    t.string   "job_name"
    t.string   "first_category"
    t.string   "first_name"
    t.string   "second_category"
    t.string   "second_name"
    t.string   "work_adress"
    t.string   "salary"
    t.string   "education"
    t.string   "vacancies"
    t.string   "recruitment"
    t.string   "work_experience"
    t.string   "manager_experience"
    t.text     "job_description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "jobs"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "pinyin"
    t.string   "sex"
    t.datetime "date_birth"
    t.string   "accounts"
    t.string   "country"
    t.string   "number"
    t.string   "landline"
    t.string   "mobile"
    t.string   "zip_code"
    t.string   "contact_address"
    t.string   "salary_expectation"
    t.string   "job_status"
    t.string   "excepetation_industry"
    t.string   "excepetation_job"
    t.text     "experience_year"
    t.text     "language_ability"
    t.string   "revenue"
    t.text     "certificates"
    t.text     "skill"
    t.string   "choose_file"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "month"
    t.integer  "day"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "choose_file_name"
    t.string   "choose_content_type"
    t.integer  "choose_file_size"
    t.datetime "choose_updated_at"
    t.string   "sexy"
  end

end
