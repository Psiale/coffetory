class CoffeeShopsController < ApplicationController
  before_action :set_coffee_shop, only: [:show, :update, :destroy]
  def index
    coffee_shop = current_user.coffee_shops.first
    json_response(coffee_shop)
  end

  def create
    coffee_shop = current_user.coffee_shops.create!(coffee_shop_params)
    json_response(coffee_shop, :created)
  end

  def show
    json_response(coffee_shop)
  end

  def update
    coffee_shop = set_coffee_shop
    coffee_shop.update(coffee_shop_params)
    json_response(coffee_shop)
  end

  def destroy
    coffee_shop.destroy
    head :no_content
  end

  private

  def coffee_shop_params
    params.permit(:id, :name, :avatar)
  end

  def set_coffee_shop
    CoffeeShop.find(params[:id])
  end
end
