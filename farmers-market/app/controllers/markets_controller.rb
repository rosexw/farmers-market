class MarketsController < ApplicationController

  def index
    if params[:param]
      @market = Market.find_markets_around_me(params[:param], 1)
      @hash = Gmaps4rails.build_markers(@market) do |market, marker|
        marker.lat market.lat
        marker.lng market.long
        marker.infowindow "<strong>#{market.name}</strong>"
      end
      search_location_raw = Geocoder.coordinates(params[:param])
      @search_location = {
        :lat=>search_location_raw[0],
        :lng=>search_location_raw[1],
        :infowindow=>"<strong>Location_Searched</strong>",
        :radius => 1609.344,
        :strokeColor => "#FF0000",
        :fillColor => "#000000"
      }
      puts @search_location

    else
      @market = Market.all
      @hash = Gmaps4rails.build_markers(@market) do |market, marker|
        marker.lat market.lat
        marker.lng market.long
        marker.infowindow "<strong>#{market.name}</strong>"
      end
    end
  end

  def show
    @market = Market.find params[:id]
    @products = Product.find_product_by_market_name(@market.name)
    @hash = Gmaps4rails.build_markers(@market) do |market, marker|
      marker.lat market.lat
      marker.lng market.long
      marker.infowindow "<strong>#{market.name}</strong>"
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
      redirect_to dashboard_index_path, notice: 'Thank you for adding a market!'
    else
      render :new
    end
  end

  def destroy
    current_farmer.markets.delete(params[:id])
    redirect_to dashboard_index_path
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
