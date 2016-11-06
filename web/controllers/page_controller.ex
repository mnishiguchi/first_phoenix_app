defmodule FirstPhoenixApp.PageController do
  use FirstPhoenixApp.Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
