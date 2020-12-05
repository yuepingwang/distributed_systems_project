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
    # render("index.html")
  end

  def show(conn, %{"messenger" => messenger}) do

    render(conn, "show.html", messenger: messenger)
  end

end