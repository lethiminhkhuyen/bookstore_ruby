class Genre < ApplicationRecord
	validates :title, presence: true
	belongs_to :category
	has_many :books
end
