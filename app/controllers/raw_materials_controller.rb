class RawMaterialsController < ApplicationController

  before_action :set_coffee_shop

  before_action :set_raw_material

  def index
    render json: @coffee_shop.raw_materials
  end

  def create
    @coffee_shop.raw_materials.create!(raw_material_params)
    render json: @coffee_shop
  end

  def show
    render json: @raw_material
  end

  private

  def raw_material_params
    params.permit(:name, :total_amount, :remaining_amount, :coffee_shop_id, :id)
  end

  def set_coffee_shop
    @coffee_shop = CoffeeShop.find(params[:coffee_shop_id])
  end

  def set_raw_material
    @raw_material = @coffee_shop.raw_materials.find(params[:id]) if @coffee_shop
  end
end
