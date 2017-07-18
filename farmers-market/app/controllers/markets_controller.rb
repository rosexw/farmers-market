class MarketsController < ApplicationController

  def index
    @market = Market.all
  end

  def show
    @market = Market.find params[:id]
    puts @market.inspect

    @products = Product.find_product_by_market_name(@market.name)
  end

end
