defmodule Modellogs.Repo do
  use Ecto.Repo,
    otp_app: :modellogs,
    adapter: Ecto.Adapters.Postgres
end
