defmodule TheShelf.Router do
  use Phoenix.Router

  scope alias: TheShelf do
    get "/", BookController, :index, as: :books

    resources "/books", BookController, only: [:new, :create]
  end
end
