class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :discount, :author, :isbn, :format, :category_id, :genre_id, :publisher, :publication_date, :pages, :dimension_w, :dimension_h, :dimension_d, :weight, :unit, :description, :import_date, :is_bestseller, :instock_unit
end
