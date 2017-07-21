class DashboardController < ApplicationController
  def index
    @market = Market.all
    @farmer = Farmer.all
  end


end
