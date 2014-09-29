defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  defoverridable [insert: 2]
  def insert(model, opts) do
    case model.__struct__.validate(model) do
      [] -> super(model, opts)
      errors -> errors
    end
  end

  def conf do
    parse_url "ecto://phoenix:phoenix@localhost/the_shelf"
  end

  def priv do
    app_dir(:the_shelf, "priv/repo")
  end
end
