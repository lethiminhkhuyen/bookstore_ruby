require "application_system_test_case"

class AddBooksTest < ApplicationSystemTestCase
  setup do
    @add_book = add_books(:one)
  end

  test "visiting the index" do
    visit add_books_url
    assert_selector "h1", text: "Add Books"
  end

  test "creating a Add book" do
    visit add_books_url
    click_on "New Add Book"

    fill_in "Author", with: @add_book.author
    fill_in "Description", with: @add_book.description
    fill_in "Dimension d", with: @add_book.dimension_d
    fill_in "Dimension h", with: @add_book.dimension_h
    fill_in "Dimension w", with: @add_book.dimension_w
    fill_in "Format", with: @add_book.format
    fill_in "Isbn", with: @add_book.isbn
    fill_in "Pages", with: @add_book.pages
    fill_in "Price", with: @add_book.price
    fill_in "Publication date", with: @add_book.publication_date
    fill_in "Publisher", with: @add_book.publisher
    fill_in "Title", with: @add_book.title
    fill_in "Weight", with: @add_book.weight
    click_on "Create Add book"

    assert_text "Add book was successfully created"
    click_on "Back"
  end

  test "updating a Add book" do
    visit add_books_url
    click_on "Edit", match: :first

    fill_in "Author", with: @add_book.author
    fill_in "Description", with: @add_book.description
    fill_in "Dimension d", with: @add_book.dimension_d
    fill_in "Dimension h", with: @add_book.dimension_h
    fill_in "Dimension w", with: @add_book.dimension_w
    fill_in "Format", with: @add_book.format
    fill_in "Isbn", with: @add_book.isbn
    fill_in "Pages", with: @add_book.pages
    fill_in "Price", with: @add_book.price
    fill_in "Publication date", with: @add_book.publication_date
    fill_in "Publisher", with: @add_book.publisher
    fill_in "Title", with: @add_book.title
    fill_in "Weight", with: @add_book.weight
    click_on "Update Add book"

    assert_text "Add book was successfully updated"
    click_on "Back"
  end

  test "destroying a Add book" do
    visit add_books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add book was successfully destroyed"
  end
end
