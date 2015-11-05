defmodule QueueSwitch.Router do
  use QueueSwitch.Web, :router

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

  scope "/api", QueueSwitch do
    post "/switch", SwitchController, :switch
  end

  scope "/", QueueSwitch do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", QueueSwitch do
  #   pipe_through :api
  # end
end
