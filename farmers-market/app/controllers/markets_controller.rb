class MarketsController < ApplicationController

  def index
    if params[:param]
      @market = Market.find_markets_around_me(params[:param], 10)
      @hash = Gmaps4rails.build_markers(@market) do |market, marker|
        marker.lat market.lat
        marker.lng market.long
        marker.infowindow market.description
      end
    else
      @market = Market.all
      @hash = Gmaps4rails.build_markers(@market) do |market, marker|
        marker.lat market.lat
        marker.lng market.long
        marker.infowindow market.description
    end
  end

    puts "ALL MARKETS RIGHT NOW"
    @market.each do |m|
      puts "///////"
      puts m.inspect
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
