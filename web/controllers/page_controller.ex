defmodule QueueSwitch.PageController do
  use QueueSwitch.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
