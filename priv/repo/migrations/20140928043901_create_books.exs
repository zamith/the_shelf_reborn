defmodule Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def up do
    "create table if not exists books(id serial primary key,
                                      title text not null,
                                      subtitle text,
                                      summary text,
                                      pages integer,
                                      url text,
                                      authors text not null,
                                      published_on date,
                                      readings integer default 0,
                                      average_rating numeric(2,1) default 0.0,
                                      state text not null,
                                      cover text,
                                      owner text)"
  end

  def down do
    "drop table books"
  end
end
