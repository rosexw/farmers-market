class ProductsController < ApplicationController
  def index
    @product = Product.new
  end

  def show
    @product = Product.find params[:id]
    puts @product.inspect
  end

  def create
    if Product.exists?(:product_name => allowed_params[:product_name])
      redirect_to '/products/new'
    else
      @product = Product.new(allowed_params)
      @product.save
      if @product.save
        redirect_to root_url, notice: 'Thank you for adding a product!'
      else
        render :new
      end
    end
  end

  def allowed_params
    params.require(:product).permit(
    :product_name,
    :organic,
    :non_gmo
    )
  end

end
