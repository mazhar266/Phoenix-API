defmodule DevstechWeb.PageController do
  use DevstechWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
