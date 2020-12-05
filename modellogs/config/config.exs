import Config

config :modellogs, Modellogs.Repo,
  database: "modellogs_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :modellogs, ecto_repos: [Modellogs.Repo]