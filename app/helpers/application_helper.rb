module ApplicationHelper
  def selector_year
    year = []
    current_time = Time.now.strftime("%Y").to_i
    current_time.downto(1950){ |num| 
      year << [num.to_s, num.to_s]
    }
    year
  end

  def selector_month
    month = []
    1.upto(12){ |num| 
      month << [num.to_s, num.to_s]
    }
    month
  end
end
