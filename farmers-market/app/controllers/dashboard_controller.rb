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
    puts "I'm here dashboard_controller"
    if current_user
      user = User.find(current_user.id)
      user.update(first_name: params[:user][:first_name])
      user.update(last_name: params[:user][:last_name])
      user.update(email: params[:user][:email])

      redirect_to '/dashboard'
    else current_farmer
      farmer = Farmer.find(current_user.id)
    end
  end

  def delete_user

  end

end
