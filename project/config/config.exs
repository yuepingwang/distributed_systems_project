# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project, Project.Repo,
  database: "project_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :project,
  ecto_repos: [Project.Repo]

# Configures the endpoint
config :project, ProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fzGoQ0OBOxXoLQvPGLBVWXZqdofrexrQ7GdmiUEqbANp8tt5tK/Sfj8p7RDqudwI",
  render_errors: [view: ProjectWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Project.PubSub,
  live_view: [signing_salt: "14GhUIfp"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
