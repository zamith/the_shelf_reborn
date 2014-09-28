use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, TheShelf.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_the_shelf_key",
  session_secret: "00$GK9GN3CRS!VM8*1XX)CBE5)FJ(TG=H7P0XZ&1^G3(ME*K7C5ZQ_ZSBPPJ1_(5)UGE3"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

