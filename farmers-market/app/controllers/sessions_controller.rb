class SessionsController < ApplicationController
  def new
  end

  def create
    farmer = Farmer.find_by(email: params[:email])
    user = User.find_by(email: params[:email])

    if farmer && farmer.authenticate(params[:password])
      session[:farmer_id] = farmer.id
      redirect_to dashboard_index_path
      result = request.location.city
      puts 'THIS IS RESULT!!!!! >>>>>>>>>>>>>>>>>>>>>'
      puts result.inspect
    elsif user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_index_path
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
