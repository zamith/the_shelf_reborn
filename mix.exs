defmodule TheShelf.Mixfile do
  use Mix.Project

  def project do
    [ app: :the_shelf,
      version: "0.0.1",
      elixir: "~> 1.0.0-rc1",
      elixirc_paths: ["lib", "web", "test"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ mod: { TheShelf, [] },
      applications: apps(Mix.env) ]
  end

  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:ecto, "~> 0.2.0"},
      {:hound, git: "git://github.com/HashNuke/hound.git"},
      {:phoenix, "0.4.1"},
      {:phoenix_haml, "~> 0.0.3"},
      {:postgrex, ">= 0.0.0"},
      {:rotor, git: "https://github.com/hashnuke/rotor", override: true},
      {:sass_rotor, git: "https://github.com/danielfarrell/sass_rotor"}
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
      :ecto,
      :rotor ]
  end
end
