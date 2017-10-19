class DishesController < ApplicationController
	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@dish = @restaurant.dishes.create(dishes_params)
		redirect_to restaurants_path(@restaurants)
	end

	private
		def dishes_params
			params.require(:dish).permit(:dishgroup, :name, :description, :price)
		end	
end
