defmodule FirstPhoenixApp.PracticeController do
  use FirstPhoenixApp.Web, :controller

  def flash(conn, _params) do
    conn
    |> put_flash(:info, "This is a flash info from practice_controller#flash")
    |> put_flash(:error, "This is a flash error from practice_controller#flash")
    |> render("flash.html")
  end

  def hello(conn, %{"name" => name}) do
    render(conn, "hello.html", name: name)
  end
end
