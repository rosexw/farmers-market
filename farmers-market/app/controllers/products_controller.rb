class ProductsController < ApplicationController
  def index
    @farmer_products = FarmersProduct.farmer_products(params[:farmer_id])
  end

  def show
    @product = Product.find params[:id]
    puts @product.inspect
  end

  def create
    @product = Product.find_or_initialize_by(allowed_params)
    @product.save
    if @product.save
      x = FarmersProduct.new
      x.farmer_id = current_farmer.id
      x.product_id = @product.id
      x.save
      redirect_to dashboard_index_path, notice: 'Thank you for adding a product!'
    else
      render :new
    end
  end

  def destroy
    current_farmer.products.delete(params[:id])
    redirect_to dashboard_index_path
  end

  def allowed_params
    params.require(:product).permit(
    :product_name,
    :product_type,
    :on_hand,
    :organic,
    :non_gmo,
    )
  end

end
