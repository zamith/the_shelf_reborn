defmodule Support.Integration.BooksHelper do
  defmacro __using__([]) do
    quote do
      setup do
        Repo.delete_all(Book)
        on_exit fn ->
          Repo.delete_all(Book)
        end
        :ok
      end
    end
  end
end
