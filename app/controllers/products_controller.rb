class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new 
  end
  
  def create
    add_product = Product.new(product_params)
    if add_product.save
      flash[:notice] = "Product saved successfully"
      redirect_to products_path
    else
      flash[:notice] = "Product Not created"
      render 'new'
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to product_path(@product)
      flash[:notice] = "Product updated successfully"
    else
      render 'edit'
    end
  end

  def delete
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private 
  def product_params
    params.require(:product).permit(:name, :category, :sold_out, :color)
  end
  
end
