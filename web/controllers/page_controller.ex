defmodule GuessingGame.PageController do
  use GuessingGame.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
