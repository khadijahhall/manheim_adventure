# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :adventure,
  ecto_repos: [Adventure.Repo]

# Configures the endpoint
config :adventure, Adventure.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "T3O97fXZ6aDEuUicd0E7QrLEJzqYJ+ZKMGXmdSzNdZWsOQidtaWPrK6TWV6b6/fW",
  render_errors: [view: Adventure.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Adventure.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
