class FarmersController < ApplicationController
  def index
  end

  def new
    @farmer = Farmer.new
  end

  def create
    if Farmer.exists?(:email => allowed_params[:email]) || User.exists?(:email => allowed_params[:email])
      redirect_to '/sessions/new'
    else
      @farmer = Farmer.new(allowed_params)
      if @farmer.save
        session[:farmer_id] = farmer.id
        redirect_to root_url, notice: 'Thank you for signing up!'
      else
        render :new
      end
    end
  end

  def show
    @farmer = Farmer.find params[:id]
    puts @farmer.inspect
  end

  private

  def allowed_params
    params.require(:farmer).permit(
    :farm_name,
    :email,
    :password,
    :password_confirmation,
    :first_name,
    :last_name,
    :website_link,
    :image,
    :description,
    :phone_no
    )
  end

end
