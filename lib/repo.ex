defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  def conf do
    parse_url "ecto://phoenix:phoenix@localhost/the_shelf"
  end

  def priv do
    app_dir(:the_shelf, "priv/repo")
  end
end
