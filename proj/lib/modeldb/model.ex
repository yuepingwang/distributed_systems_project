defmodule Proj.Model do
  use Ecto.Schema

  schema "model_files" do
    field :uid, :integer
    field :username, :string, default: "unknown_user"
    field :custom_name, :string, default: "untitled"
    field :is_locked, :boolean, default: false
    field :json_model, :string, default: "{}"
    field :change_log, :map, default: %{}
  end
end