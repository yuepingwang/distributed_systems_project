defmodule Modellogs.Modelschema do
  use Ecto.Schema

  schema "model" do
    field :uid, :integer
    field :custom_name, :boolean, default: "untitled"
    field :is_locked, :boolean, default: false
    field :change_log, :map, default: %{}
  end
end