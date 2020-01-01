defmodule DevstechWeb.UserController do
    use DevstechWeb, :controller
    alias Devstech.{Repo, Core.User}
    # import Ecto.Query

    # defp conn_with_status(conn, nil) do
    #     conn
    #         |> put_status(:not_found)
    # end

    # defp conn_with_status(conn, _) do
    #     conn
    #         |> put_status(:ok)
    # end
  
    def index(conn, _params) do
        # Jason.encode!(Repo.all(User) |> to_map)
        # Ecto.Query.from(u in User, select: u.name, u.email)
        # users = [
        #     %{name: "Joe",
        #         email: "joe@example.com",
        #         password: "topsecret",
        #         stooge: "moe"},
        #     %{name: "Anne",
        #         email: "anne@example.com",
        #         password: "guessme",
        #         stooge: "larry"},
        #     %{name: "Franklin",
        #         email: "franklin@example.com",
        #         password: "guessme",
        #         stooge: "curly"},
        # ]
        users = Repo.all(User)
        json conn, users
    end
end
