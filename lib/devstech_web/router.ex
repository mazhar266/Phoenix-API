defmodule DevstechWeb.Router do
  use DevstechWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DevstechWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/contact", ContactController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", DevstechWeb do
    pipe_through :api
    get "/", InfoController, :index
    get "/user", UserController, :index
  end
end
