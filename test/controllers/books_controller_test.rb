require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { author: @book.author, category: @book.category, description: @book.description, dimension_d: @book.dimension_d, dimension_h: @book.dimension_h, dimension_w: @book.dimension_w, discount: @book.discount, format: @book.format, genre: @book.genre, isbn: @book.isbn, pages: @book.pages, price: @book.price, publication_date: @book.publication_date, publisher: @book.publisher, title: @book.title, unit: @book.unit, weight: @book.weight } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author: @book.author, category: @book.category, description: @book.description, dimension_d: @book.dimension_d, dimension_h: @book.dimension_h, dimension_w: @book.dimension_w, discount: @book.discount, format: @book.format, genre: @book.genre, isbn: @book.isbn, pages: @book.pages, price: @book.price, publication_date: @book.publication_date, publisher: @book.publisher, title: @book.title, unit: @book.unit, weight: @book.weight } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
