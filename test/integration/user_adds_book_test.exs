defmodule Integration.UserAddsBookTest do
  use ExUnit.Case
  use Hound.Helpers
  use Support.Integration.BooksHelper
  hound_session

  test "user creates a book from the add book page" do
    navigate_to("/books/new")

    find_element(:id, "book_title") |> input_into_field("A book")
    find_element(:id, "book_authors") |> input_into_field("An author")

    click({:css, "input[type=submit]"})

    book = Repo.all(Book) |> List.last

    refute is_nil(book)
    assert book.title == "A book"
  end
end
