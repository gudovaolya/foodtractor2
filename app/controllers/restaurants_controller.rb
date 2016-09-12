class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  	@dishes = Dish.where(restaurant_id: @restaurant.id)  	
  end
end
