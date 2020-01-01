defmodule DevstechWeb.InfoController do
    use DevstechWeb, :controller

    def index(conn, _params) do
        json(conn, %{
            name: "The DevsTech",
            version: 1.0
        })
    end
end
