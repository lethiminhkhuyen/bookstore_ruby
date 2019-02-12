class AddBookSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :author, :isbn, :format, :publisher, :publication_date, :pages, :dimension_w, :dimension_h, :dimension_d, :weight, :description
end
