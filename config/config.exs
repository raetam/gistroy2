# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :p1,
  ecto_repos: [P1.Repo]

# Configures the endpoint
config :p1, P1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IIgUcM16E5ReIzefUcCHfvFJhK0CZVSARKzbphQpeA4Jr849WqgkJB1vuoqX2cPb",
  render_errors: [view: P1Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: P1.PubSub,
  live_view: [signing_salt: "3ZzGDP3s"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
