class Category < ApplicationRecord
	validates :title, presence: true
	has_many :genres
	has_many :books
	def ordered_genres
		genres.order(:title)
	end
end
