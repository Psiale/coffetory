class RawMaterialsController < ApplicationController

  before_action :set_coffee_shop

  before_action :set_raw_material

  def index
    json_response(@coffee_shop.raw_materials)
  end

  def create
    @coffee_shop.raw_materials.create!(raw_material_params)
    json_response(@coffee_shop, :created)
  end

  def show
    json_response(@raw_material)
  end

  def update
    @raw_material.update(raw_material_params)
    head :no_content
  end

  def destroy
    @raw_material.destroy
    head :no_content
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
