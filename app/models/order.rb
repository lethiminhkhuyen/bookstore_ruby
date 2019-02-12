class Order < ApplicationRecord
	has_many :items, class_name: 'OrderItem'
	#before_save :update_subtotal
	#before_create :update_user
	#before_create :update_address
	#def subtotal
	#	items.sum('quantity * price')
	#end
	#def update_subtotal
	#	self[:sub_total] = subtotal
	#end
	#def update_user
	#	self[:user_id] = current_user.id
	#end
	#def update_address
	#	self[:address_id] = current_address[0].id
	#end
end
