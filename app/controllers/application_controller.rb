class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :header
	def header
		@blueMessage = 'Free Standard Delivery'
  		@blackMessage = 'on order over £20!'
  		@fictions = Genre.where(category_id: 1).sort_by &:title
  		@nonfictions = Genre.where(category_id: 2).sort_by &:title
  		@childrens = Genre.where(category_id: 3).sort_by &:title
  		@educations = Genre.where(category_id: 4).sort_by &:title
  		@bestsellers =Genre.all.sort_by &:title
  		@news = Genre.all.sort_by &:title
  		@sales = Genre.all.sort_by &:title
  		@languages = ["English", "French", "German", "Spanish", "Italian"]
  		@formats = ["Paperback", "Hardback"]
	end
	before_action :footer
	def footer
		@copyrightYear = '2019.'
		@firstMessage = 'I agree to'
  		@secondMessage = 'term & conditions'
	end
	before_action :form
	def form
      @categories = Category.all.sort_by &:title
	end

  before_action :current_cart
  def current_cart
    @current_cart ||= ShoppingCart.new(token: cart_token)
  end
  #helper_method :current_cart
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  #helper_method :current_user
  def current_address
    @current_address ||= Address.where(user_id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_cart, :current_user, :current_address
  private
  def cart_token
    return @cart_token unless @cart_token.nil?
    session[:cart_token] ||= SecureRandom.hex(8)
    @cart_token = session[:cart_token]
  end
end
