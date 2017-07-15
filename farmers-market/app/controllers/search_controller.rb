class SearchController < ApplicationController
  def index
    puts "I CAME TO INDEX WITH PARAMETERS"
    # @product = Product.find(:all, :conditions => ['product_name LIKE ?',  "%#{params[:search]}%"])
    puts 'RESULTS'

    @products = Product.where(product_name: params[:search])
    puts @products.inspect

  end
end

# <% @product.each do |p| %>
#   <h3><%= p.inspect %></h3>
# <% end %>

# SELECT products.product_name, markets.name, markets.id
# FROM products
# JOIN farmer_products ON products.id = farmer_products.product_id
# JOIN farmers ON farmer_products.farmer_id = farmers.id
# JOIN farmer_markets ON farmer_markets.farmer_id = farmers.id
# JOIN markets ON farmer_markets.market_id = markets.id
# WHERE products.product_name = '';
# products = Product.where(name: "carrot").include(:farmer => :market)

# products.each do |product|

#   product.farmers.each do |farmer|

#     farmer.markets.each do |market|

#     end
#   end
# end

# <% @products.each do |product| %>
#   <h4><%=product.product_name%></h4>
#   <
# <% end %>
