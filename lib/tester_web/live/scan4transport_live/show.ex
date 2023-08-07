defmodule TesterWeb.Scan4transportLive.Show do
  use TesterWeb, :live_view

  alias Tester.Scan4transports

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:scan4transport, Scan4transports.get_scan4transport!(id))}
  end

  defp page_title(:show), do: "Show Scan4transport"
  defp page_title(:edit), do: "Edit Scan4transport"
end
