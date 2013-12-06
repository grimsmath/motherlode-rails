class HomeController < ApplicationController
  layout "home"

  def index
    @products = current_products
  end

end
