defmodule TheShelf.Mixfile do
  use Mix.Project

  def project do
    [ app: :the_shelf,
      version: "0.0.1",
      elixir: "~> 1.0.0-rc1",
      elixirc_paths: ["lib", "web"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { TheShelf, [] },
      applications: [
        :phoenix,
        :cowboy,
        :logger,
        :postgrex,
        :ecto
      ]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix, "0.4.1"},
      {:cowboy, "~> 1.0.0"},
      {:phoenix_haml, "~> 0.0.3"},
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 0.2.0"},
      {:sass_elixir, git: "git://github.com/zamith/sass_elixir.git"}
    ]
  end
end
