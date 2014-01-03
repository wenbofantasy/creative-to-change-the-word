class CorporatesController < ApplicationController
  def new
    @corporate = Corporate.new
  end

  def show
    @corporate = Corporate.find(params[:id])
  end


  def entrance
  end

  def create
    @corporate = Corporate.new(params[:corporate])
    if @corporate.save
      redirect_to @corporate
    else
      render "new"
    end
  end
end
