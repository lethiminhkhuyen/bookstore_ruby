class PagesController < ApplicationController
  def index
  	@books = Book.order(:id)
  end
  def item
  	@books = Book.order(:id)
  end
  def search
  	#@books = Book.search(params[:searchInput])
  	@books = if params[:searchInput]
    	Book.where('title LIKE ? or author LIKE ? or isbn LIKE ?', "%#{params[:searchInput]}%", "%#{params[:searchInput]}%", "%#{params[:searchInput]}%")
  	else
    	#Book.order(:id)
  	end
  end
  def genre
  end
end
