class GenresController < ApplicationController
  def index
  end
  def item
  end
  def show
  	@genreBooks = Book.where(genre_id: params[:id])
  end
end