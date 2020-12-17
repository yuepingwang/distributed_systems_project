defmodule ProjWeb.ProjController do
  use ProjWeb, :controller
  import Ecto.Query, only: [from: 2]

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def login(conn, %{"username" => username}) do
    render(conn, "login.html", username: username)
  end

  def edit(conn, %{"username" => username, "messenger" => messenger}) do
    # parse a stringified json
    
    # create a model
    # models = [
    #   %Proj.Model{uid: 1},
    #   %Proj.Model{uid: 2},
    #   %Proj.Model{uid: 3},
    #   %Proj.Model{uid: 4},
    # ]
    # Enum.each(models, fn (model) -> Proj.Repo.insert(model) end)

    ### Store the query string in "query" variable ###
    query = from u in "model_files",
          where: u.uid > 0,
          select: u.uid
    ### get all the models as a list, saved in "allrecords" ###
    allrecords = Proj.Repo.all(query)
    Proj.Repo.delete_all("model_files")
    
    ### print the details in allrecords to doublecheck ###
    IO.inspect allrecords

    ### Testing decoding URL strings to JSON
    url = URI.decode("%7B%22object%22%3A%20%7B%0A%09%09%22uuid%22%3A%20%2289529CC6-CBAC-412F-AFD1-FEEAE785BA19%22%2C%0A%09%09%22type%22%3A%20%22Scene%22%2C%0A%09%09%22matrix%22%3A%20%5B1%2C0%2C0%2C0%2C0%2C1%2C0%2C0%2C0%2C0%2C1%2C0%2C0%2C0%2C0%2C1%5D%2C%0A%09%09%22children%22%3A%20%5B%0A%09%09%09%7B%0A%09%09%09%09%22uuid%22%3A%20%2233FA38D9-0AAC-4657-9BBE-5E5780DDFB2F%22%2C%0A%09%09%09%09%22name%22%3A%20%22Box%201%22%2C%0A%09%09%09%09%22type%22%3A%20%22Mesh%22%2C%0A%09%09%09%09%22geometry%22%3A%20%22C3BF1E70-0BE7-4E6D-B184-C9F1E84A3423%22%2C%0A%09%09%09%09%22material%22%3A%20%2287D95D6C-6BB4-4B8F-8166-A3A6945BA5E3%22%2C%0A%09%09%09%09%22matrix%22%3A%20%5B1%2C0%2C0%2C0%2C0%2C1%2C0%2C0%2C0%2C0%2C1%2C0%2C0%2C0%2C0%2C1%5D%0A%09%09%09%7D%2C%0A%09%09%09%7B%0A%09%09%09%09%22uuid%22%3A%20%2216F2E381-2B73-44C4-A7BB-38D7E1CD2381%22%2C%0A%09%09%09%09%22name%22%3A%20%22PointLight%201%22%2C%0A%09%09%09%09%22type%22%3A%20%22PointLight%22%2C%0A%09%09%09%09%22color%22%3A%2016777215%2C%0A%09%09%09%09%22intensity%22%3A%201%2C%0A%09%09%09%09%22distance%22%3A%200%2C%0A%09%09%09%09%22matrix%22%3A%20%5B1%2C0%2C0%2C0%2C0%2C1%2C0%2C0%2C0%2C0%2C1%2C0%2C100%2C200%2C150%2C1%5D%0A%09%09%09%7D%0A%09%09%5D%0A%09%7D%7D")
    IO.inspect url
    myobject = JSON.decode(url)
    IO.inspect myobject

    render(conn, "edit.html", username: username, messenger: messenger)
  end
  
end