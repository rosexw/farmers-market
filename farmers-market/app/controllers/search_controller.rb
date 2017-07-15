class SearchController < ApplicationController
  def index
    puts "I CAME TO INDEX WITH PARAMETERS"
    # @product = Product.find(:all, :conditions => ['product_name LIKE ?',  "%#{params[:search]}%"])
    puts 'RESULTS'
    @product = Product.find_by product_name: params[:search]
  end
end

# <% @product.each do |p| %>
#   <h3><%= p.inspect %></h3>
# <% end %>
