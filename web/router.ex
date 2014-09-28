defmodule TheShelf.Router do
  use Phoenix.Router

  get "/", TheShelf.BookController, :index, as: :books
end
