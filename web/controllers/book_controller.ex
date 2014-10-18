defmodule TheShelf.BookController do
  use Phoenix.Controller
  alias Phoenix.Controller.Flash

  def index(conn, _params) do
    conn
    |> Flash.put(:notice, "Welcome!")
    |> render "index", [ books: Repo.all(Book) ]
  end

  def new(conn, _params) do
    render conn, "new"
  end

  def create(conn, params) do
    %Book{title: params["book_title"], authors: params["book_authors"], state: "available"}
    |> Repo.insert
    redirect(conn, "/")
  end
end
