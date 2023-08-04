defmodule TesterWeb.ScanLive.FormComponent do
  use TesterWeb, :live_component

  def handle_event("validate", params, socket) do
    url = socket.assigns.url
    new_url = url <> params["title"]

    socket = assign(socket, :url, new_url)

    {:noreply, socket}
  end

  def handle_event("save", _, socket) do
    {:noreply, socket}
  end
end
