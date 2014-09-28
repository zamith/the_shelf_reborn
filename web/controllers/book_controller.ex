defmodule TheShelf.BookController do
  use Phoenix.Controller
  alias Phoenix.Controller.Flash

  def index(conn, _params) do
    conn
    |> Flash.put(:notice, "Welcome!")
    |> render "index", [ books: Repo.all(Book) ]
  end
end
