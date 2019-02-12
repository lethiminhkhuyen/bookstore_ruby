class Book < ApplicationRecord
	has_one_attached :book_image
	belongs_to :category
	belongs_to :genre

	def self.search(search)
		if search
			genre = Genre.find_by(title: search)
			category = Category.find_by(title: search)

		else
			Book.all
		end
	end
end
