class MarketsController < ApplicationController

  def index
  end

  def show
    @market = Market.find params[:id]
    puts @market.inspect
  end

end
