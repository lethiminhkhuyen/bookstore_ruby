class ShoppingCart
	delegate :sub_total, :delivery_cost, :address_id, :user_id, to: :order
	def initialize(token:)
		@token = token
	end
	def order
		@order ||= Order.find_or_create_by(token: @token, status: 'cart') do |order|
			order.sub_total = 0
		end
	end
	def items_count
		order.items.sum(:quantity)
	end
	def add_item(book_id:, quantity: 1)
		book = Book.find(book_id)
		order_item = order.items.find_or_create_by(
			book_id: book_id
		)
		order_item.price = book.price
		order_item.quantity = 1
		ActiveRecord::Base.transaction do
			order_item.save
			update_sub_total!
		end
	end
	def remove_item(id:)
		ActiveRecord::Base.transaction do
			order.items.destroy(id)
			update_sub_total!
		end
	end
	def update_sub_total!
		order.sub_total = order.items.sum('quantity * price')
		order.save
	end
end