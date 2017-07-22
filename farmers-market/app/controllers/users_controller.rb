class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if User.exists?(:email => allowed_params[:email]) || Farmer.exists?(:email => allowed_params[:email])
      redirect_to '/sessions/new'
    else
      @user = User.new(allowed_params)
      if @user.save
      redirect_to root_url, notice: 'Thank you for signing up!'
      else
        render :new
      end
    end
  end

  def destroy
    deleted_user = User.find(params[:id])
    puts deleted_user
    deleted_user.destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def allowed_params
    params.require(:user).permit(
    :first_name,
    :last_name,
    :email,
    :password,
    :password_confirmation
    )
  end
end
