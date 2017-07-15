class FarmersController < ApplicationController
  def index
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(allowed_params)
    if @farmer.save
      redirect_to root_url, notice: 'Thank you for signing up!'
    else
      render :new
    end
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
