class ProductsController < ApplicationController
  def index
    @farmer_products = FarmersProduct.farmer_products(params[:farmer_id])
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
        x = FarmersProduct.new
        x.farmer_id = current_farmer.id
        x.product_id = @product.id
        x.save
        redirect_to root_url, notice: 'Thank you for adding a product!'
      else
        render :new
      end
    end
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    respond_to do |format|
      format.html { redirect_to dashboard_index_path, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
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
