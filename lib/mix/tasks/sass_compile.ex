defmodule Mix.Tasks.Sass.Compile do
  use Mix.Task

  @shortdoc "Compile project Sass files"

  @moduledoc """
    Compiles project Sass files. It is not configurable. Don't mess with it!
  """

  def run([]) do
    Mix.shell.cmd("sass --compass priv/assets/stylesheets/application.sass priv/static/css/application.css")
  end

  def run(["--help"]) do
    help
  end

  defp help do
    Mix.shell.info """
    Help:

    mix sass.compile            # Compiles files from priv/assets/stylesheets/application.sass to priv/static/css/application.css
    mix sass.compile --help     # This help
    """
  end
end
