defmodule Repo do
  use Ecto.Repo, adapter: Ecto.Adapters.Postgres

  defoverridable [insert: 2]
  def insert(model, opts) do
    wrap_with_validations(model, opts, fn -> super(model, opts) end)
  end

  def conf do
    parse_url "ecto://phoenix:phoenix@localhost/the_shelf"
  end

  def priv do
    app_dir(:the_shelf, "priv/repo")
  end

  defp wrap_with_validations(model, opts, callback) do
    module = model.__struct__

    if function_exported?(module, :validate, 1) do
      case module.validate(model) do
        [] -> callback.()
        errors -> errors
      end
    else
      callback.()
    end
  end
end
