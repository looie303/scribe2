class KidsController < ApplicationController
  def new
    @kid = Kid.new
  end
  
  def index
    @kids = Kid.paginate(page: params[:page])
  end
  
  def create
    @kid = Kid.new(kid_params)
    if @kid.save
      flash[:success] = "New kid saved!"
      redirect_to @kid
    else
      render 'new'
    end
  end
  
  def show
    @kid = Kid.find(params[:id])  
  end
  
  #  def show
  #    @user = User.find(params[:id])
  #  end
  
  
  
  private
  
    def kid_params
      params.require(:kid).permit(:fname, :mname, :lname, 
                                    :dateofbirth)
    end
  
end
