class Recruit < ActiveRecord::Base
  attr_accessible :comepany_name, :education, :first_category, :first_name, :job_description, :job_name,  :manager_experience, :recruitment, :salary, :second_category, :second_name, :vacancies, :work_adress, :jobs, :work_experience, :choose_file_name, :day
  validates :job_description, :length => { :maximum => 70000 }
end
