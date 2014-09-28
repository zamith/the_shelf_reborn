defmodule Book do
  use Ecto.Model

  schema "books" do
    field :title, :string
  end
end
