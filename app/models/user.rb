class User < ApplicationRecord
	has_secure_password
	has_many :addresses
	has_many :orders
	accepts_nested_attributes_for :addresses

	validates_uniqueness_of :email
end
