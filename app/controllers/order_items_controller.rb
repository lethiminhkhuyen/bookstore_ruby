class OrderItemsController < ApplicationController
	def index
		@freeOpt = 0
		@firstOpt = 1
		@courier = 2.85
		@items = current_cart.order.items
	end
	def create
  		current_cart.add_item(
  			book_id: params[:book_id],
  			quantity: params[:quantity]
  			)
  		redirect_to cart_path
	end
	def destroy
		current_cart.remove_item(id: params[:id])
		redirect_to cart_path
	end
end