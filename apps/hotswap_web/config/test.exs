use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hotswap_web, HotswapWeb.Endpoint,
  http: [port: 4001],
  server: false
