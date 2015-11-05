defmodule QueueSwitch.SwitchController do
  use QueueSwitch.Web, :controller
  require IEx

  def switch(conn, params) do
    IEx.pry
    text conn, "SUCCESS"
  end
end
