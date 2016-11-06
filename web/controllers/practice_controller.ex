defmodule FirstPhoenixApp.PracticeController do
  use FirstPhoenixApp.Web, :controller

  plug :assign_welcome_message, "Welcome back" when action in [:assign, :hello]

  def assign(conn, _params) do
    conn
    |> assign(:comment, "I really enjoy learning Elixir and Phoenix!")
    |> render("assign.html")
  end

  def flash(conn, _params) do
    conn
    |> put_flash(:info, "This is a flash info from practice_controller")
    |> put_flash(:error, "This is a flash error from practice_controller")
    |> render("flash.html")
  end

  def hello(conn, _params) do
    render(conn, "hello.html", name: "sir or madam")
  end

  def hello(conn, %{"name" => name}) do
    render(conn, "hello.html", name: name)
  end

  def name_json(conn, %{"name" => name}) do
    json(conn, %{name: name})
  end

  defp assign_welcome_message(conn, msg) do
    assign(conn, :message, msg)
  end
end
