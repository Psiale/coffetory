class ProductsController < ApplicationController
  before_action :set_coffee_shop
  before_action :set_product, except: [:index, :create]
  def index
  @products = @coffee_shop.products
      json_response(@products)
  end

  def show
    puts "are there params? #{params} whats in product: #{@product}"
    json_response(@product)
  end

  def create
    @product = @coffee_shop.products.create!(product_params)
    json_response(@product, :created)
  end

  def update
    @product.update(product_params)
    head :no_content
  end

  def update_product_raw_materials(raw_materials)
    puts product_raw_materials
      raw_materials = product_raw_materials[:raw_materials]
      @product.raw_materials = []
      @product.raw_materials << raw_materials
  end

  def raw_materials
    json_response(@product.raw_materials) unless @product.raw_materials.empty?
    
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
    params.permit(:name, :cost, :product_raw_materials)
  end
end
