defmodule Book do
  use Ecto.Model

  schema "books" do
    field :title
    field :subtitle
    field :summary
    field :pages, :integer
    field :url
    field :authors
    field :published_on, :date
    field :readings, :integer
    field :average_rating, :decimal
    field :state
    field :cover
    field :owner
  end

  validate book,
    title: present,
    authors: present,
    state: present
end
