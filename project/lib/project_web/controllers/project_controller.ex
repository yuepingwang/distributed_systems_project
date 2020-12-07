defmodule ProjectWeb.ProjectController do
  use ProjectWeb, :controller

  def test(conn, _params) do
    users = [
        %{name: "Joe",
          email: "joe@example.com",
          password: "topsecret",
          stooge: "moe"},
        %{name: "Anne",
          email: "anne@example.com",
          password: "guessme",
          stooge: "larry"},
        %{name: "Franklin",
          email: "franklin@example.com",
          password: "guessme",
          stooge: "curly"},
      ]
    mymodels = %{:model_id => 1, :model_name => "untitled"}

    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end

  # def login(conn, %{"username" => username}) do
  #   render(conn, "login.html", username: username)
  # end

  # def edit(conn, %{"username" => username, "messenger" => messenger} = params) do
  #   render(conn, "edit.html", params)
  # end

end