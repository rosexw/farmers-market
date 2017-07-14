class UserSessionsController < ApplicationController
  # def new
  # end

  include BCrypt

  def show
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
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
