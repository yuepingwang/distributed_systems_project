defmodule ProjWeb.ProjController do
  use ProjWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def login(conn, %{"username" => username}) do
    render(conn, "login.html", username: username)
  end

  def edit(conn, %{"username" => username, "messenger" => messenger}) do
    # create a model
    models = [
      %Proj.Model{uid: 1},
      %Proj.Model{uid: 2},
      %Proj.Model{uid: 3},
      %Proj.Model{uid: 4},
    ]
    Enum.each(models, fn (model) -> Proj.Repo.insert(model) end)
    render(conn, "edit.html", username: username, messenger: messenger)
  end
  
end