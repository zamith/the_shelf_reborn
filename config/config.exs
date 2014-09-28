# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, TheShelf.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_the_shelf_key",
  session_secret: "00$GK9GN3CRS!VM8*1XX)CBE5)FJ(TG=H7P0XZ&1^G3(ME*K7C5ZQ_ZSBPPJ1_(5)UGE3",
  catch_errors: true,
  debug_errors: false,
  error_controller: TheShelf.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
    haml: PhoenixHaml.Engine

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
