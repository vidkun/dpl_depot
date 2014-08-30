class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @counter = increment_counter
  end

  def increment_counter
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
