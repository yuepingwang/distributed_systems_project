defmodule Modellogs.Repo.Migrations.CreateModel do
  use Ecto.Migration

  def change do
    create table(:model) do
      add :uid, :integer
      add :custom_name, :boolean
      add :is_locked, :boolean
      add :change_log, :map
    end
  end
end
