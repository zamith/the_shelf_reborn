defmodule TheShelf.Router do
  use Phoenix.Router

  get "/", TheShelf.BookController, :index, as: :books

  resources "/books", TheShelf.BookController, only: [:new, :create]
end
