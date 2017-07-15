class SessionsController < ApplicationController
  def new
  end

  def create
    puts "creaste sessions"
    farmer = Farmer.find_by(email: params[:email])
    #
    # if farmer && farmer.authenticate_with_credentials(params[:password])
    #   # success logic, log them in
    #   session[:farmer_id] = farmer.id
    #   redirect_to '/', notice: 'Logged in!'
    # else
    #   # failure, render login form
    #   flash.now.alert = 'Email or password is not valid'
    #   render :new
    # end
    puts 'THIS IS FARMER'
    puts farmer.inspect
    if farmer && farmer.authenticate(params[:password])
      session[:farmer_id] = farmer.id
      redirect_to '/'
    else
      redirect_to '/farmers/new'
    end
  end

end
