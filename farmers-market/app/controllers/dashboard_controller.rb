class DashboardController < ApplicationController
  def index
    @market = Market.all
    @farmer = Farmer.all
  end

  def edit
    @user = current_user
  end

  def new
    @user = User.new
  end

  def update
    if current_user
      @user = User.find(current_user.id)
    else current_farmer
      @farmer = Farmer.find(current_user.id)
  end

  def delete_user

  end

# private

  def user_params
      # NOTE: Using `strong_parameters` gem
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
end
