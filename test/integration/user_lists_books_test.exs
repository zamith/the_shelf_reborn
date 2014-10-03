defmodule Integration.UserListsBooksTest do
  use ExUnit.Case
  use Hound.Helpers
  use Support.Integration.BooksHelper
  hound_session

  test "user can see a book on the homepage" do
    persisted_book = create_available_book

    navigate_to("http://localhost:4000/")

    get_all_book_titles
    |> Enum.member?(persisted_book.title)
    |> assert
  end

  defp create_available_book do
    %Book{title: "Random book", authors: "A. Person", state: "available"}
    |> Repo.insert
  end

  defp get_all_book_titles do
    find_element(:id, "book-list")
    |> find_all_within_element(:tag, "li")
    |> Enum.map(&visible_text(&1))
  end
end
