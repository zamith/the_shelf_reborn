defmodule TheShelf do
  use Application

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Repo, [])
    ]

    if Mix.env == :dev do
      TheShelf.Initializers.start_rotors
    end

    opts = [strategy: :one_for_one, name: TheShelf.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
