class FarmersController < ApplicationController
  def index
  end

  # def new
  # end
  include BCrypt

  def show
    @farmer = Farmer.all
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(user_params)
    if @farmer.save
      session[:user_id] = @farmer.id
      redirect_to [:root], notice: 'User created!'
    else
      session[:user_id] = nil
      flash[:error] = 'An error occured!'
      render :new
    end
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation)
  end
  
end
