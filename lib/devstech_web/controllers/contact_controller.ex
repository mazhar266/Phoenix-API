defmodule DevstechWeb.ContactController do
    use DevstechWeb, :controller
  
    def index(conn, _params) do
      render(conn, "contact.html")
    end
  end
  