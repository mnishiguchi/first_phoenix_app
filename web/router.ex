# http://www.phoenixframework.org/docs/adding-pages
defmodule FirstPhoenixApp.Router do
  use FirstPhoenixApp.Web, :router

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

  scope "/", FirstPhoenixApp do
    pipe_through :browser # Use the default browser stack

    get "/",                PageController,     :index
    get "/assign",          PracticeController, :assign
    get "/flash",           PracticeController, :flash
    get "/hello/:name",     PracticeController, :hello
    get "/hello",           PracticeController, :hello
    get "/plug",            PracticeController, :plug
    get "/name_json/:name", PracticeController, :name_json
  end

  # Other scopes may use custom stacks.
  # scope "/api", FirstPhoenixApp do
  #   pipe_through :api
  # end
end
