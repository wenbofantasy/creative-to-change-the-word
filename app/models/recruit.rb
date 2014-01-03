class Recruit < ActiveRecord::Base
  attr_accessible :comepany_name, :education, :first_category, :first_name, :job_description, :job_name, :job_nature, :manager_experience, :recruitment, :salary, :second_category, :second_name, :vacancies, :work_adress, :work_experience
   #attr_accessible :name, :email, :company_attributes, :address_attributes
end
