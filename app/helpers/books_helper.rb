module BooksHelper
	def similar_books(book)
  	@same_genre_books = Book.where(genre_id: book.genre_id)
    @similar_books = []
    while @similar_books[6] == nil do
    	@similar_books << @same_genre_books.sample
    	@similar_books = @similar_books.uniq
    end
    @similar_books = @similar_books.uniq

    #6.times.map {@same_genre_books.sample}
    #@similar_books << @same_genre_books.sample
    #@similar_books << @same_genre_books.sample
    #@similar_books << @same_genre_books.sample
    #@similar_books << @same_genre_books.sample
    #@similar_books << @same_genre_books.sample
    #@similar_books << @same_genre_books.sample
  end
end
