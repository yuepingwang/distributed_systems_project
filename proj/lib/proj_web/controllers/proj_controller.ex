defmodule ProjWeb.ProjController do
  use ProjWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def login(conn, %{"username" => username}) do
    render(conn, "login.html", username: username)
  end

  def edit(conn, %{"username" => username, "messenger" => messenger}) do
    render(conn, "edit.html", username: username, messenger: messenger)
  end
  
end