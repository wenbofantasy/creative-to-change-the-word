class User < ActiveRecord::Base
  has_many :profiles
  attr_accessible :accounts, :certificates, :choose_file, :contact_address, :country, :date_birth, :email, :excepetation_industry, :excepetation_job, :experience_year, :job_status, :landline, :language_ability, :mobile, :name, :number, :pinyin, :revenue, :salary_expectation, :sex, :skill, :zip_code, :month, :day
end
