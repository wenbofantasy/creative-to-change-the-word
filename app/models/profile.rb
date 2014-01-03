class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :firm_name, :first_time, :last_time, :post_job, :postition, :salary, :work_profile
end
