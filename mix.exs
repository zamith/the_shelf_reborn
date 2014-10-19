defmodule TheShelf.Mixfile do
  use Mix.Project

  def project do
    [ app: :the_shelf,
      version: "0.0.1",
      elixir: "~> 1.0.0-rc1",
      elixirc_paths: ["lib", "web", "test"],
      deps: deps(Mix.env) ]
  end

  # Configuration for the OTP application
  def application do
    [ mod: { TheShelf, [] },
      applications: apps(Mix.env) ]
  end

  defp deps(:test) do
    [
      {:hound, path: "https://github.com/zamith/hound"},
    ] ++ apps
  end
  defp deps(_), do: deps
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:ecto, "~> 0.2.0"},
      {:phoenix, "0.4.1"},
      {:phoenix_haml, "~> 0.0.3"},
      {:postgrex, ">= 0.0.0"}
    ]
  end

  defp apps(:test) do
    [ :hound ] ++ apps
  end
  defp apps(_), do: apps
  defp apps do
    [ :phoenix,
      :cowboy,
      :logger,
      :postgrex,
      :ecto ]
  end
end
