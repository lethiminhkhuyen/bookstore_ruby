require 'test_helper'

class AddBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_book = add_books(:one)
  end

  test "should get index" do
    get add_books_url
    assert_response :success
  end

  test "should get new" do
    get new_add_book_url
    assert_response :success
  end

  test "should create add_book" do
    assert_difference('AddBook.count') do
      post add_books_url, params: { add_book: { author: @add_book.author, description: @add_book.description, dimension_d: @add_book.dimension_d, dimension_h: @add_book.dimension_h, dimension_w: @add_book.dimension_w, format: @add_book.format, isbn: @add_book.isbn, pages: @add_book.pages, price: @add_book.price, publication_date: @add_book.publication_date, publisher: @add_book.publisher, title: @add_book.title, weight: @add_book.weight } }
    end

    assert_redirected_to add_book_url(AddBook.last)
  end

  test "should show add_book" do
    get add_book_url(@add_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_book_url(@add_book)
    assert_response :success
  end

  test "should update add_book" do
    patch add_book_url(@add_book), params: { add_book: { author: @add_book.author, description: @add_book.description, dimension_d: @add_book.dimension_d, dimension_h: @add_book.dimension_h, dimension_w: @add_book.dimension_w, format: @add_book.format, isbn: @add_book.isbn, pages: @add_book.pages, price: @add_book.price, publication_date: @add_book.publication_date, publisher: @add_book.publisher, title: @add_book.title, weight: @add_book.weight } }
    assert_redirected_to add_book_url(@add_book)
  end

  test "should destroy add_book" do
    assert_difference('AddBook.count', -1) do
      delete add_book_url(@add_book)
    end

    assert_redirected_to add_books_url
  end
end
