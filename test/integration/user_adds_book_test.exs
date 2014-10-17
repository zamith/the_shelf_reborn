defmodule Integration.UserAddsBookTest do
  use ExUnit.Case
  use Hound.Helpers
  use Support.Integration.BooksHelper
  hound_session

  test "user creates a book from the add book page" do
    navigate_to("/books/new")

    find_element(:id, "book_title") |> input_into_field("A book")
    find_element(:id, "book_authors") |> input_into_field("An author")

    click({:type, "submit"})

    book = Repo.all |> List.last
    IO.puts book
  end
end
