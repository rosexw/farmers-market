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
        marker.infowindow "#{market.name}"
      end
    end
  end

  def show
    @market = Market.find params[:id]
    @products = Product.find_product_by_market_name(@market.name)
    @hash = Gmaps4rails.build_markers(@market) do |market, marker|
      marker.lat market.lat
      marker.lng market.long
      marker.infowindow "#{market.name}"
    end
    @products_sold_here = Product.all_products_for_market(params[:id])
  end

  def create
    @market = Market.find_or_initialize_by(allowed_params)
    @market.save
    if @market.save
      x = FarmerMarket.new
      x.farmer_id = current_farmer.id
      x.market_id = @market.id
      x.save
      redirect_to root_url, notice: 'Thank you for adding a market!'
    else
      render :new
    end
  end

  def allowed_params
    params.require(:market).permit(
    :name,
    :website_link,
    :image,
    :address,
    :city,
    :province,
    :postal_code,
    :description,
    :time_open,
    :days_open
    )
  end

end
