defmodule HotswapWeb.PageController do
  use HotswapWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
