defmodule Project.Repo.Migrations.CreateModel do
  use Ecto.Migration

  def change do
    create table(:model_files) do
      add :uid, :integer
      add :custom_name, :string
      add :is_locked, :boolean
      add :json_model, :string
      add :change_log, :map
    end
  end
end
