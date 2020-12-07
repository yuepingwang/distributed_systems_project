# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :proj, Modeldb.Repo,
  database: "proj_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :proj,
  ecto_repos: [Proj.Repo]

# Configures the endpoint
config :proj, ProjWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DHGsPepb1uwjMIlzzdi7PP3bmBqizmlXs10bP8Rrmt5KUJiGCifB9o9+ewMtt58H",
  render_errors: [view: ProjWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Proj.PubSub,
  live_view: [signing_salt: "I8W0MWJM"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
