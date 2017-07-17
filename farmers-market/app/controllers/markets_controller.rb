class MarketsController < ApplicationController

  def index
    @market = Market.all
  end

  def show
    @market = Market.find params[:id]
    puts @market.inspect
  end

end
