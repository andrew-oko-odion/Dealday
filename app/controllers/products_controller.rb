class ProductsController < ApplicationController

  def index
  end

  def show
  end

  def edit
  end

  def product_params
    params.require(:product).permit(:name, :category, :sold_out, :color)
  end
  
end
