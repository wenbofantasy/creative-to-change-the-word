class UsersController < ApplicationController
  def new
    @user = User.new
    #@user.profiles.build
  end

  def show
    @user = User.find(params[:id])
  end


  def personal
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      create_record_employment(params,@user)
      redirect_to @user
    else 
      render 'new'
    end
  end

  def create_record_employment(params,user)
    record_employment = []
    params.each do |a| 
      result = a[0].index("record_employment_")
      if result.present? && result.zero? && a[1].present?
        record_employment << a
      end
    end

    return if record_employment.blank?
    # 最後の数字を取得 record_employment_company_name_1
    end_num = record_employment.last[0][-1,1]

    res = []  # []
    0.upto(end_num.to_i){ |num| 
      res << []  #[ [],[].. ]
      record_employment.each do |re|
        if re[0][-1,1].to_i == num.to_i
          res[num.to_i] << re
        end
      end
    }


    res.each_with_index do |num,i|
      res_hash = Hash[*res[i].flatten]
      RecordEmployment.create(:user_id => user.id, 
                              :start_year => res_hash["record_employment_start_year_#{i}"], 
                              :start_month => res_hash["record_employment_start_month_#{i}"], 
                              :end_year => res_hash["record_employment_end_year_#{i}"], 
                              :end_month => res_hash["record_employment_end_month_#{i}"], 
                              :company_name => res_hash["record_employment_company_name_#{i}"], 
                              :position => res_hash["record_employment_position_#{i}"],
                              :company_turn => res_hash["record_employment_company_turn_#{i}"], 
                              :company_about => res_hash["record_employment_company_about_#{i}"],
                              :salary => res_hash["record_employment_salary_#{i}"])
    end
  end


  def create_portfolio(params,user)
    portfolio = []
    params.each do |a| 
      result = a[0].index("portfolio_")
      if result.present? && result.zero? && a[1].present?
        portfolio << a
      end
    end

    return if portfolio.blank?
    # 最後の数字を取得 record_employment_company_name_1
    end_num = portfolio.last[0][-1,1]

    res = []  # []
    0.upto(end_num.to_i){ |num| 
      res << []  #[ [],[].. ]
      portfolio.each do |re|
        if re[0][-1,1].to_i == num.to_i
          res[num.to_i] << re
        end
      end
    }

    res.each_with_index do |num,i|
      res_hash = Hash[*res[i].flatten]

      name = change_name(res_hash["portfolio_#{i}"].original_filename)
      res_hash["portfolio_#{i}"].original_filename = name

      Portfolio.create(:user_id => user.id, 
                       :name => res_hash["portfolio_#{i}"] )
    end

  end
end
