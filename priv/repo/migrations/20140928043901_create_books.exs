defmodule Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def up do
    "create table if not exists books(id serial primary key, title text not null)"
  end

  def down do
    "drop table books"
  end
end
