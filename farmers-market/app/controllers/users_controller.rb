class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if User.exists?(:email => allowed_params[:email]) || Farmer.exists?(:email => allowed_params[:email])
      redirect_to '/'
    else
      @user = User.new(allowed_params)
      if @user.save
      redirect_to root_url, notice: 'Thank you for signing up!'
      else
        render :new
      end
    end
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
