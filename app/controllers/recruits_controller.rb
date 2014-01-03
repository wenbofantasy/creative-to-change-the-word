class RecruitsController < ApplicationController
  def new
    @recruit = Recruit.new
  end

  def create
    @recruit = Recruit.new(params[:recruit])
    if @recruit.save
      redirect_to @recruit
    else
      render 'new'
    end
  end
    
  def show
    @recruit = Recruit.find(params[:id])
  end


  def release
  end
end
