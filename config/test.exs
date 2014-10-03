use Mix.Config

config :phoenix, TheShelf.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_the_shelf_key",
  session_secret: "00$GK9GN3CRS!VM8*1XX)CBE5)FJ(TG=H7P0XZ&1^G3(ME*K7C5ZQ_ZSBPPJ1_(5)UGE3"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug
