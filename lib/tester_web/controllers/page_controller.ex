defmodule TesterWeb.PageController do
  use TesterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
