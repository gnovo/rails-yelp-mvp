class RestaurantsController < ApplicationController
	before_action :find_restaurant, only: [ :show, :edit, :update, :destroy ] 
	def index
		@restaurants = Restaurant.all
	end

	def show
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(restaurant_params)
		@restaurant.save
		redirect_to restaurant_path(@restaurant)
	end

	def edit
	end

	def update
		@restaurant.update(restaurant_params)
	end

	def destroy
		@restaurant.destroy
		redirect_to restaurants_path
	end

	private

	def find_restaurant
		@restaurant = Restaurant.find(params[:id])
	end

	protected

	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :phone_number, :category)
	end
end
