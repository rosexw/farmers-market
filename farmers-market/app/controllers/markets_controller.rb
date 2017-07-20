class MarketsController < ApplicationController

  def index
    @market = Market.all
    @hash = Gmaps4rails.build_markers(@market) do |market, marker|
      marker.lat market.lat
      marker.lng market.long
      marker.infowindow market.description
    end
  end

  def show
    @market = Market.find params[:id]
    @products = Product.find_product_by_market_name(@market.name)
    @hash = Gmaps4rails.build_markers(@market) do |market, marker|
      marker.lat market.lat
      marker.lng market.long
      marker.infowindow market.description
    end
  end

end
