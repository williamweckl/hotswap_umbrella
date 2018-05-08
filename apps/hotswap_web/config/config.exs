# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hotswap_web,
  namespace: HotswapWeb

# Configures the endpoint
config :hotswap_web, HotswapWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "L1REUfZZf5Kpqi3Bvn8PFEIdGUsk0MTXJ1GrY7tTpvM4tizRkpZpWh1efFJOInGM",
  render_errors: [view: HotswapWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HotswapWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :hotswap_web, :generators,
  context_app: :hotswap

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
