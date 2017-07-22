class DashboardController < ApplicationController
  def index
    @market = Market.all
    @farmer = Farmer.all
  end

  def edit
    @user = current_user
    @farmer = current_farmer
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
      farmer = Farmer.find(current_farmer.id)
      farmer.update(farm_name: params[:farmer][:farm_name])
      farmer.update(first_name: params[:farmer][:first_name])
      farmer.update(last_name: params[:farmer][:last_name])
      farmer.update(email: params[:farmer][:email])
      farmer.update(phone_no: params[:farmer][:phone_no])
      farmer.update(website_link: params[:farmer][:website_link])
      farmer.update(description: params[:farmer][:description])
      farmer.update(image: params[:farmer][:image])

      redirect_to '/dashboard'
    end
  end

  def delete_user

  end

end
