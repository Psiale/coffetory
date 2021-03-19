require 'json'
require 'ostruct'
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
    json_response(@coffee_shop.products, :created)
  end

  def update
    @product.update(product_params)
    json_response(@product, :updated)
  end

  def update_product_raw_materials
    raw_materials_ids = JSON.parse(params[:product_raw_materials])
    raw_materials = raw_materials_ids.map { |id| RawMaterial.find(id) }
    puts raw_materials_ids
    puts raw_materials
    @product.raw_materials << raw_materials
    json_response(@product.raw_materials, :created)
  end

  def raw_materials
    json_response(@product.raw_materials)
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
    params.permit(:name, :cost, :product_raw_materials, :coffee_shop_id, :id)
  end
end
