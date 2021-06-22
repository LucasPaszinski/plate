defmodule PlateWeb.PageController do
  use PlateWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
