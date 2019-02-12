json.extract! book, :id, :title, :price, :discount, :author, :isbn, :format, :category, :genre, :publisher, :publication_date, :pages, :dimension_w, :dimension_h, :dimension_d, :weight, :unit, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
