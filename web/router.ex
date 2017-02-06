defmodule Adventure.Router do
  use Adventure.Web, :router

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

  scope "/", Adventure do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/clues", PageController, :clues
    post "/give_answer", PageController, :give_answer
    get "/continue", PageController, :continue
    get "/cipher", PageController, :cipher
    post "/encrypt", PageController, :encrypt
    # get "/finish", PageController, :finish

  end

  # Other scopes may use custom stacks.
  # scope "/api", Adventure do
  #   pipe_through :api
  # end
end
