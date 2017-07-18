class SessionsController < ApplicationController
  def new
  end

  def create
    farmer = Farmer.find_by(email: params[:email])
    user = User.find_by(email: params[:email])
    # puts 'THIS IS FARMER'
    # puts farmer.inspect
    if farmer && farmer.authenticate(params[:password])
      session[:farmer_id] = farmer.id
      redirect_to '/'
    elsif user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/registration_bridge/index'
    end
  end

  def destroy
    if current_user
      session[:user_id] = nil
      redirect_to root_url, notice: 'Logged out!'
    elsif current_farmer
      session[:farmer_id] = nil
      redirect_to root_url, notice: 'Logged out!'
    end
  end

end
