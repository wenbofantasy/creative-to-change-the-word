class RecordEmployment < ActiveRecord::Base
  belongs_to :user
  attr_accessible :company_about, :company_name, :company_turn, :end_month, :end_year, :position, :salary, :start_month, :start_year, :user_id

    
  def self.year
    year = []
    current_time = Time.now.strftime("%Y").to_i
    current_time.downto(1950){ |num| 
      year << [num.to_s, num.to_s]
    }
    year
  end

  def self.month
    month = []
    1.upto(12){ |num| 
      month << [num.to_s, num.to_s]
    }
    month
  end
end
