class FarmersController < ApplicationController
  def index
  end

  def new
    @farmer = Farmer.new
  end

  def show
    @farmer = Farmer.find params[:id]
    puts @farmer.inspect
  end

  def create
    if Farmer.exists?(:email => allowed_params[:email]) || User.exists?(:email => allowed_params[:email])
      redirect_to '/sessions/new'
    else
      @farmer = Farmer.new(allowed_params)
      if @farmer.save
        session[:farmer_id] = @farmer.id
        redirect_to dashboard_index_path, notice: 'Thank you for signing up!'
      else
        render :new
      end
    end
  end

  def destroy
    @farmer = Farmer.find params[:id]
    @farmer.destroy
    session[:farmer_id] = nil
    respond_to do |format|
      format.html { redirect_to home_index_path, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
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
