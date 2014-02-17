class KidsController < ApplicationController
  before_action :signed_in_user, only: [:create, :update, :destroy]
  
  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      flash[:success] = "Kid added!"
#      redirect_to user_url
    else
      render 'create'
    end
  end
  
  def destroy
  end
  
  def update
  end
  
  private
  
    def kid_params
      params.permit(:fname, :mname, :lname, :dateofbirth)
    end
end