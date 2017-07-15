class HomeController < ApplicationController
  def index
    puts "I RUN RIGHT NOW"
    @product = Product.all
    puts @product
  end

  def show

  end

end
