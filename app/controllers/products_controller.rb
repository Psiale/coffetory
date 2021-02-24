class ProductsController < ApplicationController
  before_action :set_product, only: [:update, :destroy]
  before_action :set_coffee_shop
  def index
  @products = @coffee_shop.products
      json_response(@products)
  end

  def create
    @product = @coffee_shop.products.create!(product_params)
    json_response(@product, :created)
  end

  def update
    @product.update(product_params)
    head :no_content
  end

  def destroy
    @product.destroy
    head :no_content
  end

  private


  def set_coffee_shop
    @coffee_shop = CoffeeShop.find(params[:coffee_shop_id])
  end

  def set_product
    @product = @coffee_shop.products.find(params[:id]) if @coffee_shop
  end

  def product_params
    params.permit(:name, :cost)
  end
end
