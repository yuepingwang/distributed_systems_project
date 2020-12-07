defmodule ProjectWeb.PageController do
  use ProjectWeb, :controller

  def test(conn, _params) do
    render(conn, "index.html")
  end

  def show(conn, %{"messenger" => messenger}) do
  text(conn, "From messenger #{messenger}")
  end

  # def login(conn, %{"username" => username}) do
  # text(conn, "From User: #{username}")
  # end

  # def edit(conn, %{"username" => username, "messenger" => messenger}) do
  # text(conn, "From messenger #{messenger} , edit sumitted by: #{username}")
  # end
end
