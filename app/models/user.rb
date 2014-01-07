class User < ActiveRecord::Base


  attr_accessible :accounts, :certificates, :choose_file, :contact_address, :country, :date_birth, :email, :excepetation_industry, :excepetation_job, :experience_year, :job_status, :landline, :language_ability, :mobile, :name, :number, :pinyin, :revenue, :salary_expectation, :sex, :skill, :zip_code, :month, :day, :sexy, :avatar, :choose, :profiles, :profiles_attributes
  #attr_accessible :avatar
    has_attached_file :avatar, :styles => {  :thumb => "110x110>" }, :default_url => "/assets/rails.png"
    has_attached_file :choose, :styles => {  :thumb => "110x110>" }, :default_url => "/assets/rails.png"
  has_many :profiles
  has_many :choose_files
  accepts_nested_attributes_for :profiles
end
