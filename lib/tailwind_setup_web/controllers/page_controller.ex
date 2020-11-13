defmodule TailwindSetupWeb.PageController do
  use TailwindSetupWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
