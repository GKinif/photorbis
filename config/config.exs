# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :photorbis,
  ecto_repos: [Photorbis.Repo]

# Configures the endpoint
config :photorbis, PhotorbisWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wStPg1J/8uX01hydGwCU0R749PMGeOd/jEybX+HtKdZnzAAYOs6H0I7U42fECxFr",
  render_errors: [view: PhotorbisWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Photorbis.PubSub,
  live_view: [signing_salt: "9k4HJrET"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
