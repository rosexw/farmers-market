class SessionsController < ApplicationController
  def new
  end

  def create
    # user = User.find_by_email(params[:session][:email].downcase)
    # # If the user exists AND the password entered is correct.
    # if user && user.authenticate(params[:session][:password])
    #   # Save the user id inside the browser cookie. This is how we keep the user
    #   # logged in when they navigate around our website.
    #   session[:user_id] = user.id
    #   redirect_to '/'
    # else
    # # Register as new user
    #   render 'new'
    # end
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      # success logic, log them in
      session[:user_id] = user.id
      redirect_to '/'
    else
      # failure, render login form
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
